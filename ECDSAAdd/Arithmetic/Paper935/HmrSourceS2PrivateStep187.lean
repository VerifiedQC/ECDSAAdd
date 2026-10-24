import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep185
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

private def s2Step187CompleteMoves : List (Wire × Wire) := [(822,175),(835,688)]

private def s2Step187EarlyControlLog : HmrEarlyControlLog := ⟨[835, 822, 803, 799, 824],[840],[794],[867, 877, 879, 882, 885, 890],[]⟩

private def s2Step187FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [840], [], [802]],[[794], [824], [803], [799]],[[], [], [], []]⟩,[825],[807],[867],[877],[879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882]⟩

private def s2Step187CompleteLog : HmrEarlyStepLog := ⟨s2Step187FrontLog,s2Step187CompleteMoves,s2Step187EarlyControlLog⟩

private def s2Step187ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687],768⟩

private def s2Step187ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846],770⟩

private def s2Step187ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174],769⟩

private def s2Step187ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802],771⟩

private def s2Step187FrontOut : WindowBank := ⟨s2Step187ExitFOut,s2Step187ExitGOut,s2Step187ExitFvOut,s2Step187ExitGvOut⟩

private def s2Step187CompleteOut : WindowBank := s2Step187FrontOut.repacked s2Step187CompleteMoves

private def s2Step187EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (825≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step187EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step187EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step187EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step187EarlyControlPositiveArena,[840],s2Step187EarlyControlEqualityArena,[794],⟨⟨825,false⟩,[⟨⟨840,false⟩,794⟩]⟩⟩

private def s2Step187EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step187EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step187EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (825≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step187EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step187EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step187EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step187EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,835⟩,⟨⟨774,false⟩,822⟩,⟨⟨775,false⟩,803⟩,⟨⟨776,false⟩,799⟩,⟨⟨777,false⟩,824⟩]⟩

private def s2Step187EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step187EarlyControlZeroArena,s2Step187EarlyControlZeroPlan,s2Step187EarlyControlClassPlan,s2Step187EarlyControlFlagArena,s2Step187EarlyControlFittedArena,s2Step187EarlyControlHistoryArena,s2Step187EarlyControlSigmaArena,s2Step187EarlyControlOutputArena,s2Step187EarlyControlLog⟩

private def s2Step187CounterWork : List Wire := [867, 877, 879, 882]

private theorem s2Step187Counter_bounded : s2Step187CounterWork.toFinset⊆arenaWires := by norm_num [s2Step187CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step187HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step187CounterDuring : Arena := ⟨s2Step187HeadFvAfter.live∪s2Step187CounterWork.toFinset,Finset.union_subset s2Step187HeadFvAfter.bounded s2Step187Counter_bounded⟩

private def s2Step187EntryFFresh : List Wire := []

private def s2Step187EntryFvFresh : List Wire := []

private def s2Step187EntryGFresh : List Wire := [840]

private def s2Step187EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step187EntryGvFresh : List Wire := [802]

private def s2Step187ExitFExtra : List Wire := [688, 824]

private def s2Step187ExitFvExtra : List Wire := [799]

private def s2Step187ExitGExtra : List Wire := [175, 840, 794]

private def s2Step187ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<175) ∨ (176≤q ∧ q<688) ∨ (689≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<824) ∨ (825≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step187ExitGvExtra : List Wire := [803]

private def s2Step187Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step187Add0Work : List Wire := [879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step187Add0_bounded : s2Step187Add0Work.toFinset⊆arenaWires := by
  have h : s2Step187Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step187Add0During : Arena := ⟨s2Step187Add0Arena.live∪s2Step187Add0Work.toFinset,Finset.union_subset s2Step187Add0Arena.bounded s2Step187Add0_bounded⟩

private def s2Step187Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step187Add1Work : List Wire := [879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step187Add1_bounded : s2Step187Add1Work.toFinset⊆arenaWires := by
  have h : s2Step187Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step187Add1During : Arena := ⟨s2Step187Add1Arena.live∪s2Step187Add1Work.toFinset,Finset.union_subset s2Step187Add1Arena.bounded s2Step187Add1_bounded⟩

private def s2Step187F4FlagArena : Arena := ⟨s2Step187HeadFvAfter.live∪{867},Finset.union_subset s2Step187HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step187F4Plan : HmrHybridF4Plan := ⟨s2Step187F4FlagArena,[867],s2Step187Add0Arena,[877],s2Step187Add0During,s2Step187Add0Work,s2Step187Add1During,s2Step187Add1Work⟩

private def s2Step187HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 824],768⟩

private def s2Step187HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 799],770⟩

private def s2Step187HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 840, 794],769⟩

private def s2Step187HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 803],771⟩

private def s2Step187FrontHead : WindowBank := ⟨s2Step187HeadFOut,s2Step187HeadGOut,s2Step187HeadFvOut,s2Step187HeadGvOut⟩

private def s2Step187EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688],768⟩

private def s2Step187EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846],770⟩

private def s2Step187EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 840],769⟩

private def s2Step187EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802],771⟩

private def s2Step187FrontPair : WindowBank := ⟨s2Step187EntryFOut,s2Step187EntryGOut,s2Step187EntryFvOut,s2Step187EntryGvOut⟩

private def s2Step187FrontSigmaArena : Arena := ⟨s2Step187EntryGvAfter.live∪{825},Finset.union_subset s2Step187EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step187HeadFFresh : List Wire := [824]

private def s2Step187HeadFvFresh : List Wire := [799]

private def s2Step187HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step187HeadGFresh : List Wire := [794]

private def s2Step187HeadGvFresh : List Wire := [803]

private def s2Step187FrontPlan : HmrSourceFront := ⟨s2Step187EntryGvAfter,s2Step187FrontPair,(growRow 768 s2Step187EntryFFresh ++ (growRow 769 s2Step187EntryGFresh ++ (growRow 770 s2Step187EntryFvFresh ++ (growRow 771 s2Step187EntryGvFresh ++ [])))),s2Step187FrontSigmaArena,[825],s2Step187HeadGBefore,[807],
  s2Step187HeadFvAfter,s2Step187FrontHead,(growRow 769 s2Step187HeadGFresh ++ (growRow 768 s2Step187HeadFFresh ++ (growRow 771 s2Step187HeadGvFresh ++ (growRow 770 s2Step187HeadFvFresh ++ [])))),s2Step187F4Plan,s2Step187CounterDuring,s2Step187CounterWork,s2Step187ExitGvAfter,s2Step187FrontOut,(shrinkRow 769 s2Step187ExitGExtra ++ (shrinkRow 768 s2Step187ExitFExtra ++ (shrinkRow 770 s2Step187ExitFvExtra ++ (shrinkRow 771 s2Step187ExitGvExtra ++ []))))⟩

private def s2Step187CompletePlan : HmrEarlyStepPlan := ⟨s2Step187FrontPlan,s2Step187EarlyControlArena,s2Step187EarlyControlPlan,s2Step187CompleteMoves⟩

private theorem s2Step187Complete_apart : List.Disjoint (s2Step187CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [825, 807, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] := by
  have nd : ((s2Step187CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[825, 807, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step187Complete_owned : (s2Step187CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step187EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step187EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (825≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step187CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,688),(689,794),(795,799),(800,803),(804,822),(823,824),(825,840),(841,867),(868,877),(878,879),(880,882),(883,885),(886,890)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step187CompleteRelocationMove0Borrowed : Arena := ⟨s2Step187ExitGvAfter.live∪{175},Finset.union_subset s2Step187ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step187CompleteRelocationMove1Borrowed : Arena := ⟨s2Step187CompleteRelocationMove0After.live∪{688},Finset.union_subset s2Step187CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step187CompleteRelocation_move0_owned : 822∈s2Step187ExitGvAfter.live := by norm_num [s2Step187ExitGvAfter,arenaWires]

private theorem s2Step187CompleteRelocation_move0_reserve : s2Step187ExitGvAfter.reserve {175}=some s2Step187CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step187ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step187CompleteRelocation_move0_retire : s2Step187CompleteRelocationMove0Borrowed.retireSet {822}=s2Step187CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step187CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step187CompleteRelocationMove0Borrowed,s2Step187ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step187CompleteRelocation_move1_owned : 835∈s2Step187CompleteRelocationMove0After.live := by norm_num [s2Step187CompleteRelocationMove0After,arenaWires]

private theorem s2Step187CompleteRelocation_move1_reserve : s2Step187CompleteRelocationMove0After.reserve {688}=some s2Step187CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step187CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step187CompleteRelocation_move1_retire : s2Step187CompleteRelocationMove1Borrowed.retireSet {835}=s2Step187EarlyControlArena := by
  unfold Arena.retireSet s2Step187EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step187CompleteRelocationMove1Borrowed,s2Step187CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step187CompleteRelocation_checked : s2Step187ExitGvAfter.checkRepack [(822,175),(835,688)]=some s2Step187EarlyControlArena := by
  have tail2 : s2Step187EarlyControlArena.checkRepack []=some s2Step187EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step187CompleteRelocationMove0After s2Step187CompleteRelocationMove1Borrowed s2Step187EarlyControlArena s2Step187EarlyControlArena 835 688 []
    s2Step187CompleteRelocation_move1_owned s2Step187CompleteRelocation_move1_reserve s2Step187CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step187ExitGvAfter s2Step187CompleteRelocationMove0Borrowed s2Step187CompleteRelocationMove0After s2Step187EarlyControlArena 822 175 [(835,688)]
    s2Step187CompleteRelocation_move0_owned s2Step187CompleteRelocation_move0_reserve s2Step187CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step187Complete_repack : s2Step187ExitGvAfter.checkRepack s2Step187CompleteMoves=some s2Step187EarlyControlArena := by
  simpa only [s2Step187CompleteMoves] using s2Step187CompleteRelocation_checked

private theorem s2Step187EarlyControl_branchOwned : ([807] : List Wire).toFinset⊆s2Step187EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step187EarlyControlSigmaArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step187EarlyControl_branch : compileHmrBranchRetirement s2Step187EarlyControlSigmaArena 807=some s2Step187EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step187EarlyControl_branchOwned
  · ext q
    simp [s2Step187EarlyControlOutputArena,s2Step187EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step187EarlyControl_classEqualityBorrow : s2Step187EarlyControlPositiveArena.checkBorrow (([825, 840] : List Wire).length-1) s2Step187EarlyControlLog.classWork=some s2Step187EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step187EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step187EarlyControlPositiveArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step187EarlyControlEqualityArena,s2Step187EarlyControlPositiveArena,s2Step187EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step187EarlyControl_classEqualityOwned : ([825, 840] : List Wire).toFinset⊆s2Step187EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step187EarlyControlPositiveArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step187EarlyControl_classEquality : compileHmrEqualityLog s2Step187EarlyControlPositiveArena [825, 840] 0 s2Step187EarlyControlLog.classWork=some (s2Step187EarlyControlEqualityArena,s2Step187EarlyControlLog.classWork,s2Step187EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step187EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step187EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step187EarlyControl_classOwned : ([777, 824, 825] : List Wire).toFinset⊆s2Step187EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step187EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step187EarlyControl_positiveBorrow : s2Step187EarlyControlZeroArena.checkBorrow (1) s2Step187EarlyControlLog.positiveWork=some s2Step187EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step187EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step187EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step187EarlyControlPositiveArena,s2Step187EarlyControlZeroArena,s2Step187EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step187EarlyControl_class : compileHmrSourceClassLog s2Step187EarlyControlZeroArena false 777 s2Step187EarlyControlZeroPlan.top 0 825 s2Step187EarlyControlLog.positiveWork s2Step187EarlyControlLog.classWork=some s2Step187EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step187EarlyControlClassPlan s2Step187EarlyControlZeroArena false 777 s2Step187EarlyControlZeroPlan.top 0 825
  constructor
  · decide +kernel
  · exact s2Step187EarlyControl_classOwned
  · exact s2Step187EarlyControl_positiveBorrow
  · exact s2Step187EarlyControl_classEquality

private theorem s2Step187EarlyControl_entryRecordOwned : ([807, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step187EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step187EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (825≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step187EarlyControl_entrySigmaOwned : ([825, 254] : List Wire).toFinset⊆s2Step187EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step187EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (825≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step187EarlyControl_fitBorrow : s2Step187EarlyControlFlagArena.checkBorrow ((43-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).length)) s2Step187EarlyControlLog.recordFresh=some s2Step187EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step187EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step187EarlyControlFlagArena (fun q => (0≤q ∧ q<891)) rfl
      decide +kernel
    · ext q
      simp [s2Step187EarlyControlFittedArena,s2Step187EarlyControlFlagArena,s2Step187EarlyControlLog,arenaWires]

private theorem s2Step187EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step187EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step187EarlyControlFlagArena (fun q => (0≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step187EarlyControl_fit : compileHmrRecordGrowLog s2Step187EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step187EarlyControlLog.recordFresh=some s2Step187EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step187EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step187EarlyControl_fitBorrow

private theorem s2Step187EarlyControl_flagsBorrow : s2Step187EarlyControlEqualityArena.checkBorrow (6) s2Step187EarlyControlLog.flagWork=some s2Step187EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step187EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step187EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step187EarlyControlFlagArena,s2Step187EarlyControlEqualityArena,s2Step187EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step187EarlyControl_flagsOwned : ([794, 253, 252, 251] : List Wire).toFinset⊆s2Step187EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step187EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step187EarlyControl_flags : compileHmrFlagsLog s2Step187EarlyControlClassPlan.equalityArena s2Step187EarlyControlClassPlan.equality.top 253 252 251 s2Step187EarlyControlLog.flagWork=some s2Step187EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step187EarlyControl_flagsOwned⟩
  · exact s2Step187EarlyControl_flagsBorrow

private theorem s2Step187EarlyControl_historyBorrow : s2Step187EarlyControlArena.checkBorrow ((43-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).length)) s2Step187EarlyControlLog.recordFresh=some s2Step187EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step187EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step187EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (825≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step187EarlyControlHistoryArena,s2Step187EarlyControlArena,s2Step187EarlyControlLog,arenaWires]

private theorem s2Step187EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step187EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step187EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (825≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step187EarlyControl_history : compileHmrRecordGrowLog s2Step187EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step187EarlyControlLog.recordFresh=some s2Step187EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step187EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step187EarlyControl_historyBorrow

private theorem s2Step187EarlyControl_sigmaOwned : ([254, 825] : List Wire).toFinset⊆s2Step187EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step187EarlyControlHistoryArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (825≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step187EarlyControl_sigmaReleaseOwned : ([825] : List Wire).toFinset⊆s2Step187EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step187EarlyControlHistoryArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (825≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step187EarlyControl_sigmaRelease : s2Step187EarlyControlHistoryArena.release {825} (fun _ => false)=some s2Step187EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step187EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step187EarlyControlSigmaArena,s2Step187EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step187EarlyControl_sigma : compileHmrSigmaDropLog s2Step187EarlyControlHistoryArena false 0 0 254 825 []=some s2Step187EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step187EarlyControl_sigmaOwned⟩
  · exact s2Step187EarlyControl_sigmaRelease

private theorem s2Step187EarlyControl_zeroBorrow : s2Step187EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step187EarlyControlLog.zeroWork=some s2Step187EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step187EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step187EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (825≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step187EarlyControlZeroArena,s2Step187EarlyControlArena,s2Step187EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step187EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step187EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step187EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (825≤q ∧ q<835) ∨ (836≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step187EarlyControl_zero : compileHmrEqualityLog s2Step187EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step187EarlyControlLog.zeroWork=some (s2Step187EarlyControlZeroArena,s2Step187EarlyControlLog.zeroWork,s2Step187EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step187EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step187EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step187EarlyControl_logged : s2Step187EarlyControlPlan.Logged s2Step187EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 825 254 253 252 251 807 43 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step187EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step187EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step187EarlyControl_zero
  · exact s2Step187EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step187EarlyControl_flags
  · exact s2Step187EarlyControl_fit
  · exact s2Step187EarlyControl_history
  · exact s2Step187EarlyControl_sigma
  · exact s2Step187EarlyControl_branch

private theorem s2Step187EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step187EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 825 254 253 252 251 807 43 s2Step187EarlyControlLog=some s2Step187EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step187EarlyControlPlan s2Step187EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 825 254 253 252 251 807 43 s2Step187EarlyControl_logged

private def s2Step187EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step187EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688],768⟩

private def s2Step187EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846],770⟩

private def s2Step187EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175],769⟩

private def s2Step187EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831],771⟩

private def s2Step187FrontBank : WindowBank := ⟨s2Step187EntryFRow,s2Step187EntryGRow,s2Step187EntryFvRow,s2Step187EntryGvRow⟩

private def s2Step187Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 824, 768]

private def s2Step187Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 840, 794, 769]

private def s2Step187Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 799, 770]

private def s2Step187Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 803, 771]

private theorem s2Step187Counter_apart : Disjoint s2Step187HeadFvAfter.live s2Step187CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step187HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step187Counter_borrowed : s2Step187HeadFvAfter.checkBorrow 4 s2Step187CounterWork=some s2Step187CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step187HeadFvAfter s2Step187CounterDuring s2Step187CounterWork.toFinset s2Step187Counter_bounded s2Step187Counter_apart rfl

private theorem s2Step187Counter_owned : (825::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step187HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step187HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step187Counter_checked : compileHmrCounterStepLog s2Step187HeadFvAfter true 825 [772, 773, 774, 775, 776, 777] s2Step187CounterWork=some s2Step187CounterDuring := by
  have owned : ∀q∈825::[772, 773, 774, 775, 776, 777],q∈s2Step187HeadFvAfter.live := fun q hq => s2Step187Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step187Counter_borrowed

private def s2Step187EntryFAfter : Arena := s2Step187EntryFBefore

private theorem s2Step187EntryBank_incomingDistinct : ([s2Step187EntryFRow,s2Step187EntryGRow,s2Step187EntryFvRow,s2Step187EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step187EntryF_Incoming : rowsOwned s2Step187EntryFBefore [s2Step187EntryFRow,s2Step187EntryGRow,s2Step187EntryFvRow,s2Step187EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step187EntryFRow,s2Step187EntryGRow,s2Step187EntryFvRow,s2Step187EntryGvRow] 0 s2Step187EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step187EntryFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step187EntryBank_outgoingOwned : rowsOwned s2Step187EntryGvAfter [s2Step187EntryFOut,s2Step187EntryGOut,s2Step187EntryFvOut,s2Step187EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step187EntryGvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step187EntryF_Outgoing : rowsOwned s2Step187EntryGvAfter [s2Step187EntryFOut,s2Step187EntryGOut,s2Step187EntryFvOut,s2Step187EntryGvOut] :=
  hmrRows_owned_drop s2Step187EntryGvAfter [s2Step187EntryFOut,s2Step187EntryGOut,s2Step187EntryFvOut,s2Step187EntryGvOut] 0 s2Step187EntryBank_outgoingOwned

private theorem s2Step187EntryF_distinct : (s2Step187EntryFRow.sign::s2Step187EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step187EntryF_owned : (s2Step187EntryFRow.sign::s2Step187EntryFRow.payload).toFinset⊆s2Step187EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step187EntryFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step187EntryF_reserved : s2Step187EntryFBefore.reserve s2Step187EntryFFresh.toFinset=some s2Step187EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step187EntryFFresh,arenaWires]
  · norm_num [s2Step187EntryFBefore,s2Step187EntryFFresh,arenaWires]
  · simp only [s2Step187EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step187EntryF_checked : planRowResizeLog s2Step187EntryFBefore s2Step187EntryFRow 177 s2Step187EntryFFresh=
    some (s2Step187EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688],768⟩,growRow 768 s2Step187EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step187EntryFBefore s2Step187EntryFAfter s2Step187EntryFRow 177 s2Step187EntryFFresh
    s2Step187EntryF_distinct s2Step187EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step187EntryF_reserved
  have rowEq : WindowRow.mk (s2Step187EntryFRow.payload++s2Step187EntryFFresh) s2Step187EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step187EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step187EntryFvAfter : Arena := s2Step187EntryGAfter

private def s2Step187EntryFvBefore : Arena := s2Step187EntryGAfter

private theorem s2Step187EntryFv_Incoming : rowsOwned s2Step187EntryFvBefore [s2Step187EntryFvRow,s2Step187EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step187EntryFRow,s2Step187EntryGRow,s2Step187EntryFvRow,s2Step187EntryGvRow] 2 s2Step187EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step187EntryFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step187EntryFv_Outgoing : rowsOwned s2Step187EntryGvAfter [s2Step187EntryFvOut,s2Step187EntryGvOut] :=
  hmrRows_owned_drop s2Step187EntryGvAfter [s2Step187EntryFOut,s2Step187EntryGOut,s2Step187EntryFvOut,s2Step187EntryGvOut] 2 s2Step187EntryBank_outgoingOwned

private theorem s2Step187EntryFv_distinct : (s2Step187EntryFvRow.sign::s2Step187EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step187EntryFv_owned : (s2Step187EntryFvRow.sign::s2Step187EntryFvRow.payload).toFinset⊆s2Step187EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step187EntryFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step187EntryFv_reserved : s2Step187EntryFvBefore.reserve s2Step187EntryFvFresh.toFinset=some s2Step187EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step187EntryFvFresh,arenaWires]
  · norm_num [s2Step187EntryFvBefore,s2Step187EntryGAfter,s2Step187EntryFvFresh,arenaWires]
  · simp only [s2Step187EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step187EntryFv_checked : planRowResizeLog s2Step187EntryFvBefore s2Step187EntryFvRow 108 s2Step187EntryFvFresh=
    some (s2Step187EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846],770⟩,growRow 770 s2Step187EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step187EntryFvBefore s2Step187EntryFvAfter s2Step187EntryFvRow 108 s2Step187EntryFvFresh
    s2Step187EntryFv_distinct s2Step187EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step187EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step187EntryFvRow.payload++s2Step187EntryFvFresh) s2Step187EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step187EntryGBefore : Arena := s2Step187EntryFBefore

private theorem s2Step187EntryG_Incoming : rowsOwned s2Step187EntryGBefore [s2Step187EntryGRow,s2Step187EntryFvRow,s2Step187EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step187EntryFRow,s2Step187EntryGRow,s2Step187EntryFvRow,s2Step187EntryGvRow] 1 s2Step187EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step187EntryGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step187EntryG_Outgoing : rowsOwned s2Step187EntryGvAfter [s2Step187EntryGOut,s2Step187EntryFvOut,s2Step187EntryGvOut] :=
  hmrRows_owned_drop s2Step187EntryGvAfter [s2Step187EntryFOut,s2Step187EntryGOut,s2Step187EntryFvOut,s2Step187EntryGvOut] 1 s2Step187EntryBank_outgoingOwned

private theorem s2Step187EntryG_distinct : (s2Step187EntryGRow.sign::s2Step187EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step187EntryG_owned : (s2Step187EntryGRow.sign::s2Step187EntryGRow.payload).toFinset⊆s2Step187EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step187EntryGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step187EntryG_reserved : s2Step187EntryGBefore.reserve s2Step187EntryGFresh.toFinset=some s2Step187EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step187EntryGFresh,arenaWires]
  · norm_num [s2Step187EntryGBefore,s2Step187EntryFBefore,s2Step187EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step187EntryGAfter,s2Step187EntryGBefore,s2Step187EntryFBefore,s2Step187EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step187EntryG_checked : planRowResizeLog s2Step187EntryGBefore s2Step187EntryGRow 177 s2Step187EntryGFresh=
    some (s2Step187EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 840],769⟩,growRow 769 s2Step187EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step187EntryGBefore s2Step187EntryGAfter s2Step187EntryGRow 177 s2Step187EntryGFresh
    s2Step187EntryG_distinct s2Step187EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step187EntryG_reserved
  have rowEq : WindowRow.mk (s2Step187EntryGRow.payload++s2Step187EntryGFresh) s2Step187EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 840],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step187EntryGvBefore : Arena := s2Step187EntryGAfter

private theorem s2Step187EntryGv_Incoming : rowsOwned s2Step187EntryGvBefore [s2Step187EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step187EntryFRow,s2Step187EntryGRow,s2Step187EntryFvRow,s2Step187EntryGvRow] 3 s2Step187EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step187EntryGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step187EntryGv_Outgoing : rowsOwned s2Step187EntryGvAfter [s2Step187EntryGvOut] :=
  hmrRows_owned_drop s2Step187EntryGvAfter [s2Step187EntryFOut,s2Step187EntryGOut,s2Step187EntryFvOut,s2Step187EntryGvOut] 3 s2Step187EntryBank_outgoingOwned

private theorem s2Step187EntryGv_distinct : (s2Step187EntryGvRow.sign::s2Step187EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step187EntryGv_owned : (s2Step187EntryGvRow.sign::s2Step187EntryGvRow.payload).toFinset⊆s2Step187EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step187EntryGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step187EntryGv_reserved : s2Step187EntryGvBefore.reserve s2Step187EntryGvFresh.toFinset=some s2Step187EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step187EntryGvFresh,arenaWires]
  · norm_num [s2Step187EntryGvBefore,s2Step187EntryGAfter,s2Step187EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step187EntryGvAfter,s2Step187EntryGvBefore,s2Step187EntryGAfter,s2Step187EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step187EntryGv_checked : planRowResizeLog s2Step187EntryGvBefore s2Step187EntryGvRow 108 s2Step187EntryGvFresh=
    some (s2Step187EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802],771⟩,growRow 771 s2Step187EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step187EntryGvBefore s2Step187EntryGvAfter s2Step187EntryGvRow 108 s2Step187EntryGvFresh
    s2Step187EntryGv_distinct s2Step187EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step187EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step187EntryGvRow.payload++s2Step187EntryGvFresh) s2Step187EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step187EntryBank_rows : planWindowRowsLog s2Step187EntryFBefore [(s2Step187EntryFRow,177),(s2Step187EntryGRow,177),(s2Step187EntryFvRow,108),(s2Step187EntryGvRow,108)] [s2Step187EntryFFresh,s2Step187EntryGFresh,s2Step187EntryFvFresh,s2Step187EntryGvFresh]=
    some (s2Step187EntryGvAfter,[s2Step187EntryFOut,s2Step187EntryGOut,s2Step187EntryFvOut,s2Step187EntryGvOut],(growRow 768 s2Step187EntryFFresh ++ (growRow 769 s2Step187EntryGFresh ++ (growRow 770 s2Step187EntryFvFresh ++ (growRow 771 s2Step187EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step187EntryGvAfter [] []=some (s2Step187EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step187EntryGvBefore s2Step187EntryGvAfter s2Step187EntryGvAfter
    s2Step187EntryGvRow s2Step187EntryGvOut 108 s2Step187EntryGvFresh [] [] []
    (growRow 771 s2Step187EntryGvFresh) ([]) s2Step187EntryGv_Incoming s2Step187EntryGv_checked h4 s2Step187EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step187EntryFvBefore s2Step187EntryFvAfter s2Step187EntryGvAfter
    s2Step187EntryFvRow s2Step187EntryFvOut 108 s2Step187EntryFvFresh [(s2Step187EntryGvRow,108)] [s2Step187EntryGvFresh] [s2Step187EntryGvOut]
    (growRow 770 s2Step187EntryFvFresh) ((growRow 771 s2Step187EntryGvFresh ++ [])) s2Step187EntryFv_Incoming s2Step187EntryFv_checked h3 s2Step187EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step187EntryGBefore s2Step187EntryGAfter s2Step187EntryGvAfter
    s2Step187EntryGRow s2Step187EntryGOut 177 s2Step187EntryGFresh [(s2Step187EntryFvRow,108),(s2Step187EntryGvRow,108)] [s2Step187EntryFvFresh,s2Step187EntryGvFresh] [s2Step187EntryFvOut,s2Step187EntryGvOut]
    (growRow 769 s2Step187EntryGFresh) ((growRow 770 s2Step187EntryFvFresh ++ (growRow 771 s2Step187EntryGvFresh ++ []))) s2Step187EntryG_Incoming s2Step187EntryG_checked h2 s2Step187EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step187EntryFBefore s2Step187EntryFAfter s2Step187EntryGvAfter
    s2Step187EntryFRow s2Step187EntryFOut 177 s2Step187EntryFFresh [(s2Step187EntryGRow,177),(s2Step187EntryFvRow,108),(s2Step187EntryGvRow,108)] [s2Step187EntryGFresh,s2Step187EntryFvFresh,s2Step187EntryGvFresh] [s2Step187EntryGOut,s2Step187EntryFvOut,s2Step187EntryGvOut]
    (growRow 768 s2Step187EntryFFresh) ((growRow 769 s2Step187EntryGFresh ++ (growRow 770 s2Step187EntryFvFresh ++ (growRow 771 s2Step187EntryGvFresh ++ [])))) s2Step187EntryF_Incoming s2Step187EntryF_checked h1 s2Step187EntryF_Outgoing
  exact h0

private theorem s2Step187EntryBank_checked : compileHmrBankResizeLog .entry s2Step187EntryFBefore ⟨s2Step187EntryFRow,s2Step187EntryGRow,s2Step187EntryFvRow,s2Step187EntryGvRow⟩ ⟨177,177,108,108⟩ [s2Step187EntryFFresh,s2Step187EntryGFresh,s2Step187EntryFvFresh,s2Step187EntryGvFresh]=
    some (s2Step187EntryGvAfter,⟨s2Step187EntryFOut,s2Step187EntryGOut,s2Step187EntryFvOut,s2Step187EntryGvOut⟩,(growRow 768 s2Step187EntryFFresh ++ (growRow 769 s2Step187EntryGFresh ++ (growRow 770 s2Step187EntryFvFresh ++ (growRow 771 s2Step187EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step187EntryBank_rows]
  rfl

private def s2Step187ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<175) ∨ (176≤q ∧ q<688) ∨ (689≤q ∧ q<794) ∨ (795≤q ∧ q<824) ∨ (825≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step187ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<175) ∨ (176≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step187ExitFBefore : Arena := s2Step187ExitGAfter

private def s2Step187ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 824],768⟩

private def s2Step187ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 799],770⟩

private def s2Step187ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 840, 794],769⟩

private def s2Step187ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 803],771⟩

private theorem s2Step187ExitBank_incomingDistinct : ([s2Step187ExitGRow,s2Step187ExitFRow,s2Step187ExitFvRow,s2Step187ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step187ExitF_Incoming : rowsOwned s2Step187ExitFBefore [s2Step187ExitFRow,s2Step187ExitFvRow,s2Step187ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step187ExitGRow,s2Step187ExitFRow,s2Step187ExitFvRow,s2Step187ExitGvRow] 1 s2Step187ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step187ExitFBefore (fun q => (0≤q ∧ q<175) ∨ (176≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step187ExitBank_outgoingOwned : rowsOwned s2Step187ExitGvAfter [s2Step187ExitGOut,s2Step187ExitFOut,s2Step187ExitFvOut,s2Step187ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step187ExitGvAfter (fun q => (0≤q ∧ q<175) ∨ (176≤q ∧ q<688) ∨ (689≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<824) ∨ (825≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step187ExitF_Outgoing : rowsOwned s2Step187ExitGvAfter [s2Step187ExitFOut,s2Step187ExitFvOut,s2Step187ExitGvOut] :=
  hmrRows_owned_drop s2Step187ExitGvAfter [s2Step187ExitGOut,s2Step187ExitFOut,s2Step187ExitFvOut,s2Step187ExitGvOut] 1 s2Step187ExitBank_outgoingOwned

private theorem s2Step187ExitF_distinct : (s2Step187ExitFRow.sign::s2Step187ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step187ExitF_owned : (s2Step187ExitFRow.sign::s2Step187ExitFRow.payload).toFinset⊆s2Step187ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step187ExitFBefore (fun q => (0≤q ∧ q<175) ∨ (176≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step187ExitF_retired : s2Step187ExitFBefore.retireSet s2Step187ExitFExtra.toFinset=s2Step187ExitFAfter := by
  unfold Arena.retireSet s2Step187ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step187ExitFBefore,s2Step187ExitGAfter,s2Step187ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step187ExitF_checked : planRowResizeLog s2Step187ExitFBefore s2Step187ExitFRow 176 []=
    some (s2Step187ExitFAfter,s2Step187ExitFOut,shrinkRow 768 s2Step187ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step187ExitFBefore s2Step187ExitFRow 176 s2Step187ExitF_distinct s2Step187ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step187ExitFRow.payload.take 176) s2Step187ExitFRow.sign=s2Step187ExitFOut := by decide +kernel
  have hi : s2Step187ExitFRow.payload.drop 176=s2Step187ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step187ExitF_retired] at result
  exact result

private def s2Step187ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<175) ∨ (176≤q ∧ q<688) ∨ (689≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<824) ∨ (825≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step187ExitFvBefore : Arena := s2Step187ExitFAfter

private theorem s2Step187ExitFv_Incoming : rowsOwned s2Step187ExitFvBefore [s2Step187ExitFvRow,s2Step187ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step187ExitGRow,s2Step187ExitFRow,s2Step187ExitFvRow,s2Step187ExitGvRow] 2 s2Step187ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step187ExitFvBefore (fun q => (0≤q ∧ q<175) ∨ (176≤q ∧ q<688) ∨ (689≤q ∧ q<794) ∨ (795≤q ∧ q<824) ∨ (825≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step187ExitFv_Outgoing : rowsOwned s2Step187ExitGvAfter [s2Step187ExitFvOut,s2Step187ExitGvOut] :=
  hmrRows_owned_drop s2Step187ExitGvAfter [s2Step187ExitGOut,s2Step187ExitFOut,s2Step187ExitFvOut,s2Step187ExitGvOut] 2 s2Step187ExitBank_outgoingOwned

private theorem s2Step187ExitFv_distinct : (s2Step187ExitFvRow.sign::s2Step187ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step187ExitFv_owned : (s2Step187ExitFvRow.sign::s2Step187ExitFvRow.payload).toFinset⊆s2Step187ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step187ExitFvBefore (fun q => (0≤q ∧ q<175) ∨ (176≤q ∧ q<688) ∨ (689≤q ∧ q<794) ∨ (795≤q ∧ q<824) ∨ (825≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step187ExitFv_retired : s2Step187ExitFvBefore.retireSet s2Step187ExitFvExtra.toFinset=s2Step187ExitFvAfter := by
  unfold Arena.retireSet s2Step187ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step187ExitFvBefore,s2Step187ExitFAfter,s2Step187ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step187ExitFv_checked : planRowResizeLog s2Step187ExitFvBefore s2Step187ExitFvRow 108 []=
    some (s2Step187ExitFvAfter,s2Step187ExitFvOut,shrinkRow 770 s2Step187ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step187ExitFvBefore s2Step187ExitFvRow 108 s2Step187ExitFv_distinct s2Step187ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step187ExitFvRow.payload.take 108) s2Step187ExitFvRow.sign=s2Step187ExitFvOut := by decide +kernel
  have hi : s2Step187ExitFvRow.payload.drop 108=s2Step187ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step187ExitFv_retired] at result
  exact result

private def s2Step187ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step187ExitG_Incoming : rowsOwned s2Step187ExitGBefore [s2Step187ExitGRow,s2Step187ExitFRow,s2Step187ExitFvRow,s2Step187ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step187ExitGRow,s2Step187ExitFRow,s2Step187ExitFvRow,s2Step187ExitGvRow] 0 s2Step187ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step187ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step187ExitG_Outgoing : rowsOwned s2Step187ExitGvAfter [s2Step187ExitGOut,s2Step187ExitFOut,s2Step187ExitFvOut,s2Step187ExitGvOut] :=
  hmrRows_owned_drop s2Step187ExitGvAfter [s2Step187ExitGOut,s2Step187ExitFOut,s2Step187ExitFvOut,s2Step187ExitGvOut] 0 s2Step187ExitBank_outgoingOwned

private theorem s2Step187ExitG_distinct : (s2Step187ExitGRow.sign::s2Step187ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step187ExitG_owned : (s2Step187ExitGRow.sign::s2Step187ExitGRow.payload).toFinset⊆s2Step187ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step187ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step187ExitG_retired : s2Step187ExitGBefore.retireSet s2Step187ExitGExtra.toFinset=s2Step187ExitGAfter := by
  unfold Arena.retireSet s2Step187ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step187ExitGBefore,s2Step187ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step187ExitG_checked : planRowResizeLog s2Step187ExitGBefore s2Step187ExitGRow 175 []=
    some (s2Step187ExitGAfter,s2Step187ExitGOut,shrinkRow 769 s2Step187ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step187ExitGBefore s2Step187ExitGRow 175 s2Step187ExitG_distinct s2Step187ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step187ExitGRow.payload.take 175) s2Step187ExitGRow.sign=s2Step187ExitGOut := by decide +kernel
  have hi : s2Step187ExitGRow.payload.drop 175=s2Step187ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step187ExitG_retired] at result
  exact result

private def s2Step187ExitGvBefore : Arena := s2Step187ExitFvAfter

private theorem s2Step187ExitGv_Incoming : rowsOwned s2Step187ExitGvBefore [s2Step187ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step187ExitGRow,s2Step187ExitFRow,s2Step187ExitFvRow,s2Step187ExitGvRow] 3 s2Step187ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step187ExitGvBefore (fun q => (0≤q ∧ q<175) ∨ (176≤q ∧ q<688) ∨ (689≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<824) ∨ (825≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step187ExitGv_Outgoing : rowsOwned s2Step187ExitGvAfter [s2Step187ExitGvOut] :=
  hmrRows_owned_drop s2Step187ExitGvAfter [s2Step187ExitGOut,s2Step187ExitFOut,s2Step187ExitFvOut,s2Step187ExitGvOut] 3 s2Step187ExitBank_outgoingOwned

private theorem s2Step187ExitGv_distinct : (s2Step187ExitGvRow.sign::s2Step187ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step187ExitGv_owned : (s2Step187ExitGvRow.sign::s2Step187ExitGvRow.payload).toFinset⊆s2Step187ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step187ExitGvBefore (fun q => (0≤q ∧ q<175) ∨ (176≤q ∧ q<688) ∨ (689≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<824) ∨ (825≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step187ExitGv_retired : s2Step187ExitGvBefore.retireSet s2Step187ExitGvExtra.toFinset=s2Step187ExitGvAfter := by
  unfold Arena.retireSet s2Step187ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step187ExitGvBefore,s2Step187ExitFvAfter,s2Step187ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step187ExitGv_checked : planRowResizeLog s2Step187ExitGvBefore s2Step187ExitGvRow 108 []=
    some (s2Step187ExitGvAfter,s2Step187ExitGvOut,shrinkRow 771 s2Step187ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step187ExitGvBefore s2Step187ExitGvRow 108 s2Step187ExitGv_distinct s2Step187ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step187ExitGvRow.payload.take 108) s2Step187ExitGvRow.sign=s2Step187ExitGvOut := by decide +kernel
  have hi : s2Step187ExitGvRow.payload.drop 108=s2Step187ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step187ExitGv_retired] at result
  exact result

private theorem s2Step187ExitBank_rows : planWindowRowsLog s2Step187ExitGBefore [(s2Step187ExitGRow,175),(s2Step187ExitFRow,176),(s2Step187ExitFvRow,108),(s2Step187ExitGvRow,108)] [[],[],[],[]]=
    some (s2Step187ExitGvAfter,[s2Step187ExitGOut,s2Step187ExitFOut,s2Step187ExitFvOut,s2Step187ExitGvOut],(shrinkRow 769 s2Step187ExitGExtra ++ (shrinkRow 768 s2Step187ExitFExtra ++ (shrinkRow 770 s2Step187ExitFvExtra ++ (shrinkRow 771 s2Step187ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step187ExitGvAfter [] []=some (s2Step187ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step187ExitGvBefore s2Step187ExitGvAfter s2Step187ExitGvAfter
    s2Step187ExitGvRow s2Step187ExitGvOut 108 [] [] [] []
    (shrinkRow 771 s2Step187ExitGvExtra) ([]) s2Step187ExitGv_Incoming s2Step187ExitGv_checked h4 s2Step187ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step187ExitFvBefore s2Step187ExitFvAfter s2Step187ExitGvAfter
    s2Step187ExitFvRow s2Step187ExitFvOut 108 [] [(s2Step187ExitGvRow,108)] [[]] [s2Step187ExitGvOut]
    (shrinkRow 770 s2Step187ExitFvExtra) ((shrinkRow 771 s2Step187ExitGvExtra ++ [])) s2Step187ExitFv_Incoming s2Step187ExitFv_checked h3 s2Step187ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step187ExitFBefore s2Step187ExitFAfter s2Step187ExitGvAfter
    s2Step187ExitFRow s2Step187ExitFOut 176 [] [(s2Step187ExitFvRow,108),(s2Step187ExitGvRow,108)] [[],[]] [s2Step187ExitFvOut,s2Step187ExitGvOut]
    (shrinkRow 768 s2Step187ExitFExtra) ((shrinkRow 770 s2Step187ExitFvExtra ++ (shrinkRow 771 s2Step187ExitGvExtra ++ []))) s2Step187ExitF_Incoming s2Step187ExitF_checked h2 s2Step187ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step187ExitGBefore s2Step187ExitGAfter s2Step187ExitGvAfter
    s2Step187ExitGRow s2Step187ExitGOut 175 [] [(s2Step187ExitFRow,176),(s2Step187ExitFvRow,108),(s2Step187ExitGvRow,108)] [[],[],[]] [s2Step187ExitFOut,s2Step187ExitFvOut,s2Step187ExitGvOut]
    (shrinkRow 769 s2Step187ExitGExtra) ((shrinkRow 768 s2Step187ExitFExtra ++ (shrinkRow 770 s2Step187ExitFvExtra ++ (shrinkRow 771 s2Step187ExitGvExtra ++ [])))) s2Step187ExitG_Incoming s2Step187ExitG_checked h1 s2Step187ExitG_Outgoing
  exact h0

private theorem s2Step187ExitBank_checked : compileHmrBankResizeLog .exit s2Step187ExitGBefore ⟨s2Step187ExitFRow,s2Step187ExitGRow,s2Step187ExitFvRow,s2Step187ExitGvRow⟩ ⟨176,175,108,108⟩ [[],[],[],[]]=
    some (s2Step187ExitGvAfter,⟨s2Step187ExitFOut,s2Step187ExitGOut,s2Step187ExitFvOut,s2Step187ExitGvOut⟩,(shrinkRow 769 s2Step187ExitGExtra ++ (shrinkRow 768 s2Step187ExitFExtra ++ (shrinkRow 770 s2Step187ExitFvExtra ++ (shrinkRow 771 s2Step187ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step187ExitBank_rows]
  rfl

private theorem s2Step187Add0_apart : Disjoint s2Step187Add0Arena.live s2Step187Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step187Add0Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step187Add0_card : s2Step187Add0Arena.live.card=887 := by
  decide +kernel

private theorem s2Step187Add0_borrowed : s2Step187Add0Arena.checkBorrow (hmrHybridCount s2Step187Add0Arena s2Step187Add0B.length) s2Step187Add0Work=some s2Step187Add0During := by
  have len : s2Step187Add0Work.length=hmrHybridCount s2Step187Add0Arena s2Step187Add0B.length := by
    rw [hmrHybridCount,s2Step187Add0_card]
    decide +kernel
  have nd : s2Step187Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step187Add0Arena s2Step187Add0During s2Step187Add0Work.toFinset s2Step187Add0_bounded s2Step187Add0_apart rfl

private theorem s2Step187Add0_distinct : (867::807::877::(s2Step187Add0A++s2Step187Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step187Add0_owned : (867::807::877::(s2Step187Add0A++s2Step187Add0B)).toFinset⊆s2Step187Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step187Add0Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step187Add0_checked : compileHmrHybridCinLog s2Step187Add0Arena 807 867 877 s2Step187Add0A s2Step187Add0B s2Step187Add0Work=some s2Step187Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step187Add0Arena s2Step187Add0During 807 867 877 s2Step187Add0A s2Step187Add0B s2Step187Add0Work
    (by decide +kernel) (by decide +kernel) s2Step187Add0_distinct
    (fun q hq => s2Step187Add0_owned (List.mem_toFinset.mpr hq)) s2Step187Add0_borrowed

private theorem s2Step187Add1_apart : Disjoint s2Step187Add1Arena.live s2Step187Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step187Add1Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step187Add1_card : s2Step187Add1Arena.live.card=887 := by
  decide +kernel

private theorem s2Step187Add1_borrowed : s2Step187Add1Arena.checkBorrow (hmrHybridCount s2Step187Add1Arena s2Step187Add1B.length) s2Step187Add1Work=some s2Step187Add1During := by
  have len : s2Step187Add1Work.length=hmrHybridCount s2Step187Add1Arena s2Step187Add1B.length := by
    rw [hmrHybridCount,s2Step187Add1_card]
    decide +kernel
  have nd : s2Step187Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step187Add1Arena s2Step187Add1During s2Step187Add1Work.toFinset s2Step187Add1_bounded s2Step187Add1_apart rfl

private theorem s2Step187Add1_distinct : (867::807::877::(s2Step187Add1A++s2Step187Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step187Add1_owned : (867::807::877::(s2Step187Add1A++s2Step187Add1B)).toFinset⊆s2Step187Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step187Add1Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step187Add1_checked : compileHmrHybridCinLog s2Step187Add1Arena 807 867 877 s2Step187Add1A s2Step187Add1B s2Step187Add1Work=some s2Step187Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step187Add1Arena s2Step187Add1During 807 867 877 s2Step187Add1A s2Step187Add1B s2Step187Add1Work
    (by decide +kernel) (by decide +kernel) s2Step187Add1_distinct
    (fun q hq => s2Step187Add1_owned (List.mem_toFinset.mpr hq)) s2Step187Add1_borrowed

private theorem s2Step187F4_apart : Disjoint (s2Step187Add0A++s2Step187Add0B).toFinset (s2Step187Add1A++s2Step187Add1B).toFinset := by
  have nd : ((s2Step187Add0A++s2Step187Add0B)++(s2Step187Add1A++s2Step187Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step187F4_carry : s2Step187F4FlagArena.checkBorrow 1 [877]=some s2Step187Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step187F4FlagArena,s2Step187HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step187F4FlagArena,s2Step187HeadFvAfter,s2Step187Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step187F4_distinct : (825::807::867::877::((s2Step187Add0A++s2Step187Add1A)++(s2Step187Add0B++s2Step187Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step187F4_flag : s2Step187HeadFvAfter.checkBorrow 1 [867]=some s2Step187F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step187HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step187F4_owned : (825::807::((s2Step187Add0A++s2Step187Add1A)++(s2Step187Add0B++s2Step187Add1B))).toFinset⊆s2Step187HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step187HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step187F4_checked : compileHmrHybridF4Log s2Step187HeadFvAfter 825 807 s2Step187Add0A s2Step187Add0B s2Step187Add1A s2Step187Add1B [867] [877] s2Step187Add0Work s2Step187Add1Work=some s2Step187F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step187HeadFvAfter s2Step187F4FlagArena s2Step187Add0Arena s2Step187Add0During s2Step187Add1During 825 807
    s2Step187Add0A s2Step187Add0B s2Step187Add1A s2Step187Add1B [867] [877] s2Step187Add0Work s2Step187Add1Work
    (fun q hq => s2Step187F4_owned (List.mem_toFinset.mpr hq)) s2Step187F4_flag s2Step187F4_carry
    s2Step187F4_distinct s2Step187F4_apart s2Step187Add0_checked s2Step187Add1_checked

private theorem s2Step187Front_branch : s2Step187FrontSigmaArena.checkBorrow 1 [807]=some s2Step187HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step187FrontSigmaArena,s2Step187EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step187FrontSigmaArena,s2Step187EntryGvAfter,s2Step187HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step187Front_entry : HmrFrontEntryValid s2Step187EntryFBefore s2Step187FrontBank 177 108 ⟨176,175,108,108⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step187FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step187EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step187EntryFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<824) ∨ (826≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step187FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step187Front_sigma : s2Step187EntryGvAfter.checkBorrow 1 [825]=some s2Step187FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step187EntryGvAfter,arenaWires]
  · rfl

private def s2Step187HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step187HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step187HeadFBefore : Arena := s2Step187HeadGAfter

private def s2Step187HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688],768⟩

private def s2Step187HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846],770⟩

private def s2Step187HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 840],769⟩

private def s2Step187HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802],771⟩

private theorem s2Step187HeadBank_incomingDistinct : ([s2Step187HeadGRow,s2Step187HeadFRow,s2Step187HeadGvRow,s2Step187HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step187HeadF_Incoming : rowsOwned s2Step187HeadFBefore [s2Step187HeadFRow,s2Step187HeadGvRow,s2Step187HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step187HeadGRow,s2Step187HeadFRow,s2Step187HeadGvRow,s2Step187HeadFvRow] 1 s2Step187HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step187HeadFBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step187HeadBank_outgoingOwned : rowsOwned s2Step187HeadFvAfter [s2Step187HeadGOut,s2Step187HeadFOut,s2Step187HeadGvOut,s2Step187HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step187HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step187HeadF_Outgoing : rowsOwned s2Step187HeadFvAfter [s2Step187HeadFOut,s2Step187HeadGvOut,s2Step187HeadFvOut] :=
  hmrRows_owned_drop s2Step187HeadFvAfter [s2Step187HeadGOut,s2Step187HeadFOut,s2Step187HeadGvOut,s2Step187HeadFvOut] 1 s2Step187HeadBank_outgoingOwned

private theorem s2Step187HeadF_distinct : (s2Step187HeadFRow.sign::s2Step187HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step187HeadF_owned : (s2Step187HeadFRow.sign::s2Step187HeadFRow.payload).toFinset⊆s2Step187HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step187HeadFBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step187HeadF_reserved : s2Step187HeadFBefore.reserve s2Step187HeadFFresh.toFinset=some s2Step187HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step187HeadFFresh,arenaWires]
  · norm_num [s2Step187HeadFBefore,s2Step187HeadGAfter,s2Step187HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step187HeadFAfter,s2Step187HeadFBefore,s2Step187HeadGAfter,s2Step187HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step187HeadF_checked : planRowResizeLog s2Step187HeadFBefore s2Step187HeadFRow 178 s2Step187HeadFFresh=
    some (s2Step187HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 824],768⟩,growRow 768 s2Step187HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step187HeadFBefore s2Step187HeadFAfter s2Step187HeadFRow 178 s2Step187HeadFFresh
    s2Step187HeadF_distinct s2Step187HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step187HeadF_reserved
  have rowEq : WindowRow.mk (s2Step187HeadFRow.payload++s2Step187HeadFFresh) s2Step187HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 824],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step187HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step187HeadFvBefore : Arena := s2Step187HeadGvAfter

private theorem s2Step187HeadFv_Incoming : rowsOwned s2Step187HeadFvBefore [s2Step187HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step187HeadGRow,s2Step187HeadFRow,s2Step187HeadGvRow,s2Step187HeadFvRow] 3 s2Step187HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step187HeadFvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step187HeadFv_Outgoing : rowsOwned s2Step187HeadFvAfter [s2Step187HeadFvOut] :=
  hmrRows_owned_drop s2Step187HeadFvAfter [s2Step187HeadGOut,s2Step187HeadFOut,s2Step187HeadGvOut,s2Step187HeadFvOut] 3 s2Step187HeadBank_outgoingOwned

private theorem s2Step187HeadFv_distinct : (s2Step187HeadFvRow.sign::s2Step187HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step187HeadFv_owned : (s2Step187HeadFvRow.sign::s2Step187HeadFvRow.payload).toFinset⊆s2Step187HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step187HeadFvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step187HeadFv_reserved : s2Step187HeadFvBefore.reserve s2Step187HeadFvFresh.toFinset=some s2Step187HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step187HeadFvFresh,arenaWires]
  · norm_num [s2Step187HeadFvBefore,s2Step187HeadGvAfter,s2Step187HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step187HeadFvAfter,s2Step187HeadFvBefore,s2Step187HeadGvAfter,s2Step187HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step187HeadFv_checked : planRowResizeLog s2Step187HeadFvBefore s2Step187HeadFvRow 109 s2Step187HeadFvFresh=
    some (s2Step187HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 799],770⟩,growRow 770 s2Step187HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step187HeadFvBefore s2Step187HeadFvAfter s2Step187HeadFvRow 109 s2Step187HeadFvFresh
    s2Step187HeadFv_distinct s2Step187HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step187HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step187HeadFvRow.payload++s2Step187HeadFvFresh) s2Step187HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 799],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step187HeadG_Incoming : rowsOwned s2Step187HeadGBefore [s2Step187HeadGRow,s2Step187HeadFRow,s2Step187HeadGvRow,s2Step187HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step187HeadGRow,s2Step187HeadFRow,s2Step187HeadGvRow,s2Step187HeadFvRow] 0 s2Step187HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step187HeadGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step187HeadG_Outgoing : rowsOwned s2Step187HeadFvAfter [s2Step187HeadGOut,s2Step187HeadFOut,s2Step187HeadGvOut,s2Step187HeadFvOut] :=
  hmrRows_owned_drop s2Step187HeadFvAfter [s2Step187HeadGOut,s2Step187HeadFOut,s2Step187HeadGvOut,s2Step187HeadFvOut] 0 s2Step187HeadBank_outgoingOwned

private theorem s2Step187HeadG_distinct : (s2Step187HeadGRow.sign::s2Step187HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step187HeadG_owned : (s2Step187HeadGRow.sign::s2Step187HeadGRow.payload).toFinset⊆s2Step187HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step187HeadGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step187HeadG_reserved : s2Step187HeadGBefore.reserve s2Step187HeadGFresh.toFinset=some s2Step187HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step187HeadGFresh,arenaWires]
  · norm_num [s2Step187HeadGBefore,s2Step187HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step187HeadGAfter,s2Step187HeadGBefore,s2Step187HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step187HeadG_checked : planRowResizeLog s2Step187HeadGBefore s2Step187HeadGRow 178 s2Step187HeadGFresh=
    some (s2Step187HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 840, 794],769⟩,growRow 769 s2Step187HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step187HeadGBefore s2Step187HeadGAfter s2Step187HeadGRow 178 s2Step187HeadGFresh
    s2Step187HeadG_distinct s2Step187HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step187HeadG_reserved
  have rowEq : WindowRow.mk (s2Step187HeadGRow.payload++s2Step187HeadGFresh) s2Step187HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 840, 794],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step187HeadGvBefore : Arena := s2Step187HeadFAfter

private theorem s2Step187HeadGv_Incoming : rowsOwned s2Step187HeadGvBefore [s2Step187HeadGvRow,s2Step187HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step187HeadGRow,s2Step187HeadFRow,s2Step187HeadGvRow,s2Step187HeadFvRow] 2 s2Step187HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step187HeadGvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step187HeadGv_Outgoing : rowsOwned s2Step187HeadFvAfter [s2Step187HeadGvOut,s2Step187HeadFvOut] :=
  hmrRows_owned_drop s2Step187HeadFvAfter [s2Step187HeadGOut,s2Step187HeadFOut,s2Step187HeadGvOut,s2Step187HeadFvOut] 2 s2Step187HeadBank_outgoingOwned

private theorem s2Step187HeadGv_distinct : (s2Step187HeadGvRow.sign::s2Step187HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step187HeadGv_owned : (s2Step187HeadGvRow.sign::s2Step187HeadGvRow.payload).toFinset⊆s2Step187HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step187HeadGvBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step187HeadGv_reserved : s2Step187HeadGvBefore.reserve s2Step187HeadGvFresh.toFinset=some s2Step187HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step187HeadGvFresh,arenaWires]
  · norm_num [s2Step187HeadGvBefore,s2Step187HeadFAfter,s2Step187HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step187HeadGvAfter,s2Step187HeadGvBefore,s2Step187HeadFAfter,s2Step187HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step187HeadGv_checked : planRowResizeLog s2Step187HeadGvBefore s2Step187HeadGvRow 109 s2Step187HeadGvFresh=
    some (s2Step187HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 803],771⟩,growRow 771 s2Step187HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step187HeadGvBefore s2Step187HeadGvAfter s2Step187HeadGvRow 109 s2Step187HeadGvFresh
    s2Step187HeadGv_distinct s2Step187HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step187HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step187HeadGvRow.payload++s2Step187HeadGvFresh) s2Step187HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 803],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step187HeadBank_rows : planWindowRowsLog s2Step187HeadGBefore [(s2Step187HeadGRow,178),(s2Step187HeadFRow,178),(s2Step187HeadGvRow,109),(s2Step187HeadFvRow,109)] [s2Step187HeadGFresh,s2Step187HeadFFresh,s2Step187HeadGvFresh,s2Step187HeadFvFresh]=
    some (s2Step187HeadFvAfter,[s2Step187HeadGOut,s2Step187HeadFOut,s2Step187HeadGvOut,s2Step187HeadFvOut],(growRow 769 s2Step187HeadGFresh ++ (growRow 768 s2Step187HeadFFresh ++ (growRow 771 s2Step187HeadGvFresh ++ (growRow 770 s2Step187HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step187HeadFvAfter [] []=some (s2Step187HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step187HeadFvBefore s2Step187HeadFvAfter s2Step187HeadFvAfter
    s2Step187HeadFvRow s2Step187HeadFvOut 109 s2Step187HeadFvFresh [] [] []
    (growRow 770 s2Step187HeadFvFresh) ([]) s2Step187HeadFv_Incoming s2Step187HeadFv_checked h4 s2Step187HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step187HeadGvBefore s2Step187HeadGvAfter s2Step187HeadFvAfter
    s2Step187HeadGvRow s2Step187HeadGvOut 109 s2Step187HeadGvFresh [(s2Step187HeadFvRow,109)] [s2Step187HeadFvFresh] [s2Step187HeadFvOut]
    (growRow 771 s2Step187HeadGvFresh) ((growRow 770 s2Step187HeadFvFresh ++ [])) s2Step187HeadGv_Incoming s2Step187HeadGv_checked h3 s2Step187HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step187HeadFBefore s2Step187HeadFAfter s2Step187HeadFvAfter
    s2Step187HeadFRow s2Step187HeadFOut 178 s2Step187HeadFFresh [(s2Step187HeadGvRow,109),(s2Step187HeadFvRow,109)] [s2Step187HeadGvFresh,s2Step187HeadFvFresh] [s2Step187HeadGvOut,s2Step187HeadFvOut]
    (growRow 768 s2Step187HeadFFresh) ((growRow 771 s2Step187HeadGvFresh ++ (growRow 770 s2Step187HeadFvFresh ++ []))) s2Step187HeadF_Incoming s2Step187HeadF_checked h2 s2Step187HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step187HeadGBefore s2Step187HeadGAfter s2Step187HeadFvAfter
    s2Step187HeadGRow s2Step187HeadGOut 178 s2Step187HeadGFresh [(s2Step187HeadFRow,178),(s2Step187HeadGvRow,109),(s2Step187HeadFvRow,109)] [s2Step187HeadFFresh,s2Step187HeadGvFresh,s2Step187HeadFvFresh] [s2Step187HeadFOut,s2Step187HeadGvOut,s2Step187HeadFvOut]
    (growRow 769 s2Step187HeadGFresh) ((growRow 768 s2Step187HeadFFresh ++ (growRow 771 s2Step187HeadGvFresh ++ (growRow 770 s2Step187HeadFvFresh ++ [])))) s2Step187HeadG_Incoming s2Step187HeadG_checked h1 s2Step187HeadG_Outgoing
  exact h0

private theorem s2Step187HeadBank_checked : compileHmrBankResizeLog .headroom s2Step187HeadGBefore ⟨s2Step187HeadFRow,s2Step187HeadGRow,s2Step187HeadFvRow,s2Step187HeadGvRow⟩ ⟨178,178,109,109⟩ [s2Step187HeadGFresh,s2Step187HeadFFresh,s2Step187HeadGvFresh,s2Step187HeadFvFresh]=
    some (s2Step187HeadFvAfter,⟨s2Step187HeadFOut,s2Step187HeadGOut,s2Step187HeadFvOut,s2Step187HeadGvOut⟩,(growRow 769 s2Step187HeadGFresh ++ (growRow 768 s2Step187HeadFFresh ++ (growRow 771 s2Step187HeadGvFresh ++ (growRow 770 s2Step187HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step187HeadBank_rows]
  rfl

private theorem s2Step187Front_checked : compileHmrSourceFrontLog s2Step187EntryFBefore s2Step187FrontBank 177 108 ⟨176,175,108,108⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step187FrontLog=some s2Step187FrontPlan := by
  have pairEq : s2Step187FrontPair=⟨s2Step187HeadFRow,s2Step187HeadGRow,s2Step187HeadFvRow,s2Step187HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step187FrontHead=⟨s2Step187ExitFRow,s2Step187ExitGRow,s2Step187ExitFvRow,s2Step187ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step187Add0A=s2Step187FrontHead.f.wires := by decide +kernel
  have gEq : s2Step187Add0B=s2Step187FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step187Add1A=s2Step187FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step187Add1B=s2Step187FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step187EntryFBefore s2Step187FrontBank 177 108 ⟨176,175,108,108⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step187FrontLog s2Step187FrontPlan
  · exact s2Step187Front_entry
  · exact s2Step187EntryBank_checked
  · exact s2Step187Front_sigma
  · rfl
  · exact s2Step187Front_branch
  · rfl
  · simpa only [s2Step187FrontPlan,pairEq] using s2Step187HeadBank_checked
  · simpa only [s2Step187FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step187F4_checked
  · exact s2Step187Counter_checked
  · rfl
  · simpa only [s2Step187FrontPlan,headEq] using s2Step187ExitBank_checked

private theorem s2Step187Complete_explicit_checked : compileHmrEarlyStepLog s2Step187EntryFBefore s2Step187FrontBank 177 108 ⟨176,175,108,108⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step187CompleteLog=some s2Step187CompletePlan := by
  let Q := s2Step187EarlyControlPlan
  have hq := s2Step187EarlyControl_plan_checked
  have fv1 : s2Step187CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step187CompleteOut.fv.payload[2]?.getD s2Step187CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step187CompleteOut.fv.payload[3]?.getD s2Step187CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step187CompleteOut.fv.payload[4]?.getD s2Step187CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step187EntryFBefore s2Step187EarlyControlArena s2Step187FrontBank 177 108 ⟨176,175,108,108⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step187CompleteLog s2Step187FrontPlan Q
    s2Step187Front_checked s2Step187Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step187Complete_owned s2Step187Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step187EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 825 s2Step187CompleteOut.fv.second (s2Step187CompleteOut.fv.payload[2]?.getD s2Step187CompleteOut.fv.sign) (s2Step187CompleteOut.fv.payload[3]?.getD s2Step187CompleteOut.fv.sign) (s2Step187CompleteOut.fv.payload[4]?.getD s2Step187CompleteOut.fv.sign) 807 43 s2Step187EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep187Arena : Arena := s2Step187EntryFBefore
def s2PrivateStep187Bank : WindowBank := s2Step187FrontBank
def s2PrivateStep187Spec : HmrSourceWalkStepLog := ⟨177,108,⟨176,175,108,108⟩,43,.early s2Step187CompleteLog⟩
def s2PrivateStep187Plan : HmrSourceStepPlan := .early s2Step187CompletePlan
theorem s2PrivateStep187_source : s2PrivateStep187Spec=s2ObservedLogs176[11] := rfl
theorem s2PrivateStep187_checked : compileHmrSourceStepLog s2PrivateStep187Arena s2PrivateStep187Bank
    s2PrivateStep187Spec.fgWidth s2PrivateStep187Spec.vWidth s2PrivateStep187Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888]
    6 498 187 s2PrivateStep187Spec.need none s2PrivateStep187Spec.log=some s2PrivateStep187Plan := by
  change compileHmrSourceStepLog s2Step187EntryFBefore s2Step187FrontBank 177 108 ⟨176,175,108,108⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 6 498 187 43 none (.early s2Step187CompleteLog)=some (.early s2Step187CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 187<498)]
  rw [s2Step187Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
