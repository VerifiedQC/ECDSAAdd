import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep172
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

private def s2Step174CompleteMoves : List (Wire × Wire) := [(830,694)]

private def s2Step174EarlyControlLog : HmrEarlyControlLog := ⟨[830, 847, 785, 794, 793],[803],[799],[867, 877, 879, 882, 885, 888],[]⟩

private def s2Step174FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [794], [], []],[[793], [785], [847], [787]],[[], [], [], []]⟩,[846],[821],[803],[799],[867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[803, 799, 867, 877]⟩

private def s2Step174CompleteLog : HmrEarlyStepLog := ⟨s2Step174FrontLog,s2Step174CompleteMoves,s2Step174EarlyControlLog⟩

private def s2Step174ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693],768⟩

private def s2Step174ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787],770⟩

private def s2Step174ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181],769⟩

private def s2Step174ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805],771⟩

private def s2Step174FrontOut : WindowBank := ⟨s2Step174ExitFOut,s2Step174ExitGOut,s2Step174ExitFvOut,s2Step174ExitGvOut⟩

private def s2Step174CompleteOut : WindowBank := s2Step174FrontOut.repacked s2Step174CompleteMoves

private def s2Step174EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step174EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step174EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step174EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step174EarlyControlPositiveArena,[803],s2Step174EarlyControlEqualityArena,[799],⟨⟨846,false⟩,[⟨⟨803,false⟩,799⟩]⟩⟩

private def s2Step174EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step174EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step174EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step174EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step174EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step174EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step174EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,830⟩,⟨⟨774,false⟩,847⟩,⟨⟨775,false⟩,785⟩,⟨⟨776,false⟩,794⟩,⟨⟨777,false⟩,793⟩]⟩

private def s2Step174EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step174EarlyControlZeroArena,s2Step174EarlyControlZeroPlan,s2Step174EarlyControlClassPlan,s2Step174EarlyControlFlagArena,s2Step174EarlyControlFittedArena,s2Step174EarlyControlHistoryArena,s2Step174EarlyControlSigmaArena,s2Step174EarlyControlOutputArena,s2Step174EarlyControlLog⟩

private def s2Step174CounterWork : List Wire := [803, 799, 867, 877]

private theorem s2Step174Counter_bounded : s2Step174CounterWork.toFinset⊆arenaWires := by norm_num [s2Step174CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step174HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step174CounterDuring : Arena := ⟨s2Step174HeadFvAfter.live∪s2Step174CounterWork.toFinset,Finset.union_subset s2Step174HeadFvAfter.bounded s2Step174Counter_bounded⟩

private def s2Step174EntryFFresh : List Wire := []

private def s2Step174EntryFvFresh : List Wire := []

private def s2Step174EntryGFresh : List Wire := [794]

private def s2Step174EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step174EntryGvAfter : Arena := s2Step174EntryGAfter

private def s2Step174EntryGvFresh : List Wire := []

private def s2Step174ExitFExtra : List Wire := [694, 785]

private def s2Step174ExitGExtra : List Wire := [794, 793]

private def s2Step174ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<694) ∨ (695≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step174ExitGvExtra : List Wire := [847]

private def s2Step174Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step174Add0Work : List Wire := [867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step174Add0_bounded : s2Step174Add0Work.toFinset⊆arenaWires := by
  have h : s2Step174Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step174Add0During : Arena := ⟨s2Step174Add0Arena.live∪s2Step174Add0Work.toFinset,Finset.union_subset s2Step174Add0Arena.bounded s2Step174Add0_bounded⟩

private def s2Step174Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step174Add1Work : List Wire := [867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step174Add1_bounded : s2Step174Add1Work.toFinset⊆arenaWires := by
  have h : s2Step174Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step174Add1During : Arena := ⟨s2Step174Add1Arena.live∪s2Step174Add1Work.toFinset,Finset.union_subset s2Step174Add1Arena.bounded s2Step174Add1_bounded⟩

private def s2Step174F4FlagArena : Arena := ⟨s2Step174HeadFvAfter.live∪{803},Finset.union_subset s2Step174HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step174F4Plan : HmrHybridF4Plan := ⟨s2Step174F4FlagArena,[803],s2Step174Add0Arena,[799],s2Step174Add0During,s2Step174Add0Work,s2Step174Add1During,s2Step174Add1Work⟩

private def s2Step174HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 785],768⟩

private def s2Step174HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787],770⟩

private def s2Step174HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 794, 793],769⟩

private def s2Step174HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 847],771⟩

private def s2Step174FrontHead : WindowBank := ⟨s2Step174HeadFOut,s2Step174HeadGOut,s2Step174HeadFvOut,s2Step174HeadGvOut⟩

private def s2Step174EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694],768⟩

private def s2Step174EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820],770⟩

private def s2Step174EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 794],769⟩

private def s2Step174EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805],771⟩

private def s2Step174FrontPair : WindowBank := ⟨s2Step174EntryFOut,s2Step174EntryGOut,s2Step174EntryFvOut,s2Step174EntryGvOut⟩

private def s2Step174FrontSigmaArena : Arena := ⟨s2Step174EntryGvAfter.live∪{846},Finset.union_subset s2Step174EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step174HeadFFresh : List Wire := [785]

private def s2Step174HeadFvFresh : List Wire := [787]

private def s2Step174HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step174HeadGFresh : List Wire := [793]

private def s2Step174HeadGvFresh : List Wire := [847]

private def s2Step174FrontPlan : HmrSourceFront := ⟨s2Step174EntryGvAfter,s2Step174FrontPair,(growRow 768 s2Step174EntryFFresh ++ (growRow 769 s2Step174EntryGFresh ++ (growRow 770 s2Step174EntryFvFresh ++ (growRow 771 s2Step174EntryGvFresh ++ [])))),s2Step174FrontSigmaArena,[846],s2Step174HeadGBefore,[821],
  s2Step174HeadFvAfter,s2Step174FrontHead,(growRow 769 s2Step174HeadGFresh ++ (growRow 768 s2Step174HeadFFresh ++ (growRow 771 s2Step174HeadGvFresh ++ (growRow 770 s2Step174HeadFvFresh ++ [])))),s2Step174F4Plan,s2Step174CounterDuring,s2Step174CounterWork,s2Step174ExitGvAfter,s2Step174FrontOut,(shrinkRow 769 s2Step174ExitGExtra ++ (shrinkRow 768 s2Step174ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step174ExitGvExtra ++ []))))⟩

private def s2Step174CompletePlan : HmrEarlyStepPlan := ⟨s2Step174FrontPlan,s2Step174EarlyControlArena,s2Step174EarlyControlPlan,s2Step174CompleteMoves⟩

private theorem s2Step174Complete_apart : List.Disjoint (s2Step174CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [846, 821, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step174CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[846, 821, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step174Complete_owned : (s2Step174CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step174EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step174EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step174CompleteMoveArena : Arena := ⟨s2Step174ExitGvAfter.live∪{694},Finset.union_subset s2Step174ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step174Complete_repack : s2Step174ExitGvAfter.checkRepack s2Step174CompleteMoves=some s2Step174EarlyControlArena := by
  have owned : 830∈s2Step174ExitGvAfter.live := by norm_num [s2Step174ExitGvAfter,arenaWires]
  have reserve : s2Step174ExitGvAfter.reserve {694}=some s2Step174CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step174ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step174CompleteMoveArena.retireSet {830}=s2Step174EarlyControlArena := by
    unfold Arena.retireSet s2Step174EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step174CompleteMoveArena,s2Step174ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step174CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step174CompleteMoveArena.retireSet {830}).checkRepack []=some s2Step174EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step174EarlyControl_branchOwned : ([821] : List Wire).toFinset⊆s2Step174EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step174EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step174EarlyControl_branch : compileHmrBranchRetirement s2Step174EarlyControlSigmaArena 821=some s2Step174EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step174EarlyControl_branchOwned
  · ext q
    simp [s2Step174EarlyControlOutputArena,s2Step174EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step174EarlyControl_classEqualityBorrow : s2Step174EarlyControlPositiveArena.checkBorrow (([846, 803] : List Wire).length-1) s2Step174EarlyControlLog.classWork=some s2Step174EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step174EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step174EarlyControlPositiveArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step174EarlyControlEqualityArena,s2Step174EarlyControlPositiveArena,s2Step174EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step174EarlyControl_classEqualityOwned : ([846, 803] : List Wire).toFinset⊆s2Step174EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step174EarlyControlPositiveArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step174EarlyControl_classEquality : compileHmrEqualityLog s2Step174EarlyControlPositiveArena [846, 803] 0 s2Step174EarlyControlLog.classWork=some (s2Step174EarlyControlEqualityArena,s2Step174EarlyControlLog.classWork,s2Step174EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step174EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step174EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step174EarlyControl_classOwned : ([777, 793, 846] : List Wire).toFinset⊆s2Step174EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step174EarlyControlZeroArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step174EarlyControl_positiveBorrow : s2Step174EarlyControlZeroArena.checkBorrow (1) s2Step174EarlyControlLog.positiveWork=some s2Step174EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step174EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step174EarlyControlZeroArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step174EarlyControlPositiveArena,s2Step174EarlyControlZeroArena,s2Step174EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step174EarlyControl_class : compileHmrSourceClassLog s2Step174EarlyControlZeroArena false 777 s2Step174EarlyControlZeroPlan.top 0 846 s2Step174EarlyControlLog.positiveWork s2Step174EarlyControlLog.classWork=some s2Step174EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step174EarlyControlClassPlan s2Step174EarlyControlZeroArena false 777 s2Step174EarlyControlZeroPlan.top 0 846
  constructor
  · decide +kernel
  · exact s2Step174EarlyControl_classOwned
  · exact s2Step174EarlyControl_positiveBorrow
  · exact s2Step174EarlyControl_classEquality

private theorem s2Step174EarlyControl_entryRecordOwned : ([821, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step174EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step174EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step174EarlyControl_entrySigmaOwned : ([846, 254] : List Wire).toFinset⊆s2Step174EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step174EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step174EarlyControl_fitBorrow : s2Step174EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step174EarlyControlLog.recordFresh=some s2Step174EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step174EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step174EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step174EarlyControlFittedArena,s2Step174EarlyControlFlagArena,s2Step174EarlyControlLog,arenaWires]

private theorem s2Step174EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step174EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step174EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step174EarlyControl_fit : compileHmrRecordGrowLog s2Step174EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step174EarlyControlLog.recordFresh=some s2Step174EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step174EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step174EarlyControl_fitBorrow

private theorem s2Step174EarlyControl_flagsBorrow : s2Step174EarlyControlEqualityArena.checkBorrow (6) s2Step174EarlyControlLog.flagWork=some s2Step174EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step174EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step174EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step174EarlyControlFlagArena,s2Step174EarlyControlEqualityArena,s2Step174EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step174EarlyControl_flagsOwned : ([799, 253, 252, 251] : List Wire).toFinset⊆s2Step174EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step174EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step174EarlyControl_flags : compileHmrFlagsLog s2Step174EarlyControlClassPlan.equalityArena s2Step174EarlyControlClassPlan.equality.top 253 252 251 s2Step174EarlyControlLog.flagWork=some s2Step174EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step174EarlyControl_flagsOwned⟩
  · exact s2Step174EarlyControl_flagsBorrow

private theorem s2Step174EarlyControl_historyBorrow : s2Step174EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step174EarlyControlLog.recordFresh=some s2Step174EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step174EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step174EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step174EarlyControlHistoryArena,s2Step174EarlyControlArena,s2Step174EarlyControlLog,arenaWires]

private theorem s2Step174EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step174EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step174EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step174EarlyControl_history : compileHmrRecordGrowLog s2Step174EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step174EarlyControlLog.recordFresh=some s2Step174EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step174EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step174EarlyControl_historyBorrow

private theorem s2Step174EarlyControl_sigmaOwned : ([254, 846] : List Wire).toFinset⊆s2Step174EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step174EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step174EarlyControl_sigmaReleaseOwned : ([846] : List Wire).toFinset⊆s2Step174EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step174EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step174EarlyControl_sigmaRelease : s2Step174EarlyControlHistoryArena.release {846} (fun _ => false)=some s2Step174EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step174EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step174EarlyControlSigmaArena,s2Step174EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step174EarlyControl_sigma : compileHmrSigmaDropLog s2Step174EarlyControlHistoryArena false 0 0 254 846 []=some s2Step174EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step174EarlyControl_sigmaOwned⟩
  · exact s2Step174EarlyControl_sigmaRelease

private theorem s2Step174EarlyControl_zeroBorrow : s2Step174EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step174EarlyControlLog.zeroWork=some s2Step174EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step174EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step174EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step174EarlyControlZeroArena,s2Step174EarlyControlArena,s2Step174EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step174EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step174EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step174EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step174EarlyControl_zero : compileHmrEqualityLog s2Step174EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step174EarlyControlLog.zeroWork=some (s2Step174EarlyControlZeroArena,s2Step174EarlyControlLog.zeroWork,s2Step174EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step174EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step174EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step174EarlyControl_logged : s2Step174EarlyControlPlan.Logged s2Step174EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 846 254 253 252 251 821 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step174EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step174EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step174EarlyControl_zero
  · exact s2Step174EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step174EarlyControl_flags
  · exact s2Step174EarlyControl_fit
  · exact s2Step174EarlyControl_history
  · exact s2Step174EarlyControl_sigma
  · exact s2Step174EarlyControl_branch

private theorem s2Step174EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step174EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 846 254 253 252 251 821 42 s2Step174EarlyControlLog=some s2Step174EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step174EarlyControlPlan s2Step174EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 846 254 253 252 251 821 42 s2Step174EarlyControl_logged

private def s2Step174EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step174EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694],768⟩

private def s2Step174EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820],770⟩

private def s2Step174EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181],769⟩

private def s2Step174EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805],771⟩

private def s2Step174FrontBank : WindowBank := ⟨s2Step174EntryFRow,s2Step174EntryGRow,s2Step174EntryFvRow,s2Step174EntryGvRow⟩

private def s2Step174Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 785, 768]

private def s2Step174Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 794, 793, 769]

private def s2Step174Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 770]

private def s2Step174Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 847, 771]

private theorem s2Step174Counter_apart : Disjoint s2Step174HeadFvAfter.live s2Step174CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step174HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step174Counter_borrowed : s2Step174HeadFvAfter.checkBorrow 4 s2Step174CounterWork=some s2Step174CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step174HeadFvAfter s2Step174CounterDuring s2Step174CounterWork.toFinset s2Step174Counter_bounded s2Step174Counter_apart rfl

private theorem s2Step174Counter_owned : (846::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step174HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step174HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step174Counter_checked : compileHmrCounterStepLog s2Step174HeadFvAfter true 846 [772, 773, 774, 775, 776, 777] s2Step174CounterWork=some s2Step174CounterDuring := by
  have owned : ∀q∈846::[772, 773, 774, 775, 776, 777],q∈s2Step174HeadFvAfter.live := fun q hq => s2Step174Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step174Counter_borrowed

private def s2Step174EntryFAfter : Arena := s2Step174EntryFBefore

private theorem s2Step174EntryBank_incomingDistinct : ([s2Step174EntryFRow,s2Step174EntryGRow,s2Step174EntryFvRow,s2Step174EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step174EntryF_Incoming : rowsOwned s2Step174EntryFBefore [s2Step174EntryFRow,s2Step174EntryGRow,s2Step174EntryFvRow,s2Step174EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step174EntryFRow,s2Step174EntryGRow,s2Step174EntryFvRow,s2Step174EntryGvRow] 0 s2Step174EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step174EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step174EntryBank_outgoingOwned : rowsOwned s2Step174EntryGvAfter [s2Step174EntryFOut,s2Step174EntryGOut,s2Step174EntryFvOut,s2Step174EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step174EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step174EntryF_Outgoing : rowsOwned s2Step174EntryGvAfter [s2Step174EntryFOut,s2Step174EntryGOut,s2Step174EntryFvOut,s2Step174EntryGvOut] :=
  hmrRows_owned_drop s2Step174EntryGvAfter [s2Step174EntryFOut,s2Step174EntryGOut,s2Step174EntryFvOut,s2Step174EntryGvOut] 0 s2Step174EntryBank_outgoingOwned

private theorem s2Step174EntryF_distinct : (s2Step174EntryFRow.sign::s2Step174EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step174EntryF_owned : (s2Step174EntryFRow.sign::s2Step174EntryFRow.payload).toFinset⊆s2Step174EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step174EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step174EntryF_reserved : s2Step174EntryFBefore.reserve s2Step174EntryFFresh.toFinset=some s2Step174EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step174EntryFFresh,arenaWires]
  · norm_num [s2Step174EntryFBefore,s2Step174EntryFFresh,arenaWires]
  · simp only [s2Step174EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step174EntryF_checked : planRowResizeLog s2Step174EntryFBefore s2Step174EntryFRow 183 s2Step174EntryFFresh=
    some (s2Step174EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694],768⟩,growRow 768 s2Step174EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step174EntryFBefore s2Step174EntryFAfter s2Step174EntryFRow 183 s2Step174EntryFFresh
    s2Step174EntryF_distinct s2Step174EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step174EntryF_reserved
  have rowEq : WindowRow.mk (s2Step174EntryFRow.payload++s2Step174EntryFFresh) s2Step174EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step174EntryFvAfter : Arena := s2Step174EntryGAfter

private def s2Step174EntryFvBefore : Arena := s2Step174EntryGAfter

private theorem s2Step174EntryFv_Incoming : rowsOwned s2Step174EntryFvBefore [s2Step174EntryFvRow,s2Step174EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step174EntryFRow,s2Step174EntryGRow,s2Step174EntryFvRow,s2Step174EntryGvRow] 2 s2Step174EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step174EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step174EntryFv_Outgoing : rowsOwned s2Step174EntryGvAfter [s2Step174EntryFvOut,s2Step174EntryGvOut] :=
  hmrRows_owned_drop s2Step174EntryGvAfter [s2Step174EntryFOut,s2Step174EntryGOut,s2Step174EntryFvOut,s2Step174EntryGvOut] 2 s2Step174EntryBank_outgoingOwned

private theorem s2Step174EntryFv_distinct : (s2Step174EntryFvRow.sign::s2Step174EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step174EntryFv_owned : (s2Step174EntryFvRow.sign::s2Step174EntryFvRow.payload).toFinset⊆s2Step174EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step174EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step174EntryFv_reserved : s2Step174EntryFvBefore.reserve s2Step174EntryFvFresh.toFinset=some s2Step174EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step174EntryFvFresh,arenaWires]
  · norm_num [s2Step174EntryFvBefore,s2Step174EntryGAfter,s2Step174EntryFvFresh,arenaWires]
  · simp only [s2Step174EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step174EntryFv_checked : planRowResizeLog s2Step174EntryFvBefore s2Step174EntryFvRow 101 s2Step174EntryFvFresh=
    some (s2Step174EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820],770⟩,growRow 770 s2Step174EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step174EntryFvBefore s2Step174EntryFvAfter s2Step174EntryFvRow 101 s2Step174EntryFvFresh
    s2Step174EntryFv_distinct s2Step174EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step174EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step174EntryFvRow.payload++s2Step174EntryFvFresh) s2Step174EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step174EntryGBefore : Arena := s2Step174EntryFBefore

private theorem s2Step174EntryG_Incoming : rowsOwned s2Step174EntryGBefore [s2Step174EntryGRow,s2Step174EntryFvRow,s2Step174EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step174EntryFRow,s2Step174EntryGRow,s2Step174EntryFvRow,s2Step174EntryGvRow] 1 s2Step174EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step174EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step174EntryG_Outgoing : rowsOwned s2Step174EntryGvAfter [s2Step174EntryGOut,s2Step174EntryFvOut,s2Step174EntryGvOut] :=
  hmrRows_owned_drop s2Step174EntryGvAfter [s2Step174EntryFOut,s2Step174EntryGOut,s2Step174EntryFvOut,s2Step174EntryGvOut] 1 s2Step174EntryBank_outgoingOwned

private theorem s2Step174EntryG_distinct : (s2Step174EntryGRow.sign::s2Step174EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step174EntryG_owned : (s2Step174EntryGRow.sign::s2Step174EntryGRow.payload).toFinset⊆s2Step174EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step174EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step174EntryG_reserved : s2Step174EntryGBefore.reserve s2Step174EntryGFresh.toFinset=some s2Step174EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step174EntryGFresh,arenaWires]
  · norm_num [s2Step174EntryGBefore,s2Step174EntryFBefore,s2Step174EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step174EntryGAfter,s2Step174EntryGBefore,s2Step174EntryFBefore,s2Step174EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step174EntryG_checked : planRowResizeLog s2Step174EntryGBefore s2Step174EntryGRow 183 s2Step174EntryGFresh=
    some (s2Step174EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 794],769⟩,growRow 769 s2Step174EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step174EntryGBefore s2Step174EntryGAfter s2Step174EntryGRow 183 s2Step174EntryGFresh
    s2Step174EntryG_distinct s2Step174EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step174EntryG_reserved
  have rowEq : WindowRow.mk (s2Step174EntryGRow.payload++s2Step174EntryGFresh) s2Step174EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 794],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step174EntryGvBefore : Arena := s2Step174EntryGAfter

private theorem s2Step174EntryGv_Incoming : rowsOwned s2Step174EntryGvBefore [s2Step174EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step174EntryFRow,s2Step174EntryGRow,s2Step174EntryFvRow,s2Step174EntryGvRow] 3 s2Step174EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step174EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step174EntryGv_Outgoing : rowsOwned s2Step174EntryGvAfter [s2Step174EntryGvOut] :=
  hmrRows_owned_drop s2Step174EntryGvAfter [s2Step174EntryFOut,s2Step174EntryGOut,s2Step174EntryFvOut,s2Step174EntryGvOut] 3 s2Step174EntryBank_outgoingOwned

private theorem s2Step174EntryGv_distinct : (s2Step174EntryGvRow.sign::s2Step174EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step174EntryGv_owned : (s2Step174EntryGvRow.sign::s2Step174EntryGvRow.payload).toFinset⊆s2Step174EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step174EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step174EntryGv_reserved : s2Step174EntryGvBefore.reserve s2Step174EntryGvFresh.toFinset=some s2Step174EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step174EntryGvFresh,arenaWires]
  · norm_num [s2Step174EntryGvBefore,s2Step174EntryGAfter,s2Step174EntryGvFresh,arenaWires]
  · simp only [s2Step174EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step174EntryGv_checked : planRowResizeLog s2Step174EntryGvBefore s2Step174EntryGvRow 101 s2Step174EntryGvFresh=
    some (s2Step174EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805],771⟩,growRow 771 s2Step174EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step174EntryGvBefore s2Step174EntryGvAfter s2Step174EntryGvRow 101 s2Step174EntryGvFresh
    s2Step174EntryGv_distinct s2Step174EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step174EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step174EntryGvRow.payload++s2Step174EntryGvFresh) s2Step174EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step174EntryBank_rows : planWindowRowsLog s2Step174EntryFBefore [(s2Step174EntryFRow,183),(s2Step174EntryGRow,183),(s2Step174EntryFvRow,101),(s2Step174EntryGvRow,101)] [s2Step174EntryFFresh,s2Step174EntryGFresh,s2Step174EntryFvFresh,s2Step174EntryGvFresh]=
    some (s2Step174EntryGvAfter,[s2Step174EntryFOut,s2Step174EntryGOut,s2Step174EntryFvOut,s2Step174EntryGvOut],(growRow 768 s2Step174EntryFFresh ++ (growRow 769 s2Step174EntryGFresh ++ (growRow 770 s2Step174EntryFvFresh ++ (growRow 771 s2Step174EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step174EntryGvAfter [] []=some (s2Step174EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step174EntryGvBefore s2Step174EntryGvAfter s2Step174EntryGvAfter
    s2Step174EntryGvRow s2Step174EntryGvOut 101 s2Step174EntryGvFresh [] [] []
    (growRow 771 s2Step174EntryGvFresh) ([]) s2Step174EntryGv_Incoming s2Step174EntryGv_checked h4 s2Step174EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step174EntryFvBefore s2Step174EntryFvAfter s2Step174EntryGvAfter
    s2Step174EntryFvRow s2Step174EntryFvOut 101 s2Step174EntryFvFresh [(s2Step174EntryGvRow,101)] [s2Step174EntryGvFresh] [s2Step174EntryGvOut]
    (growRow 770 s2Step174EntryFvFresh) ((growRow 771 s2Step174EntryGvFresh ++ [])) s2Step174EntryFv_Incoming s2Step174EntryFv_checked h3 s2Step174EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step174EntryGBefore s2Step174EntryGAfter s2Step174EntryGvAfter
    s2Step174EntryGRow s2Step174EntryGOut 183 s2Step174EntryGFresh [(s2Step174EntryFvRow,101),(s2Step174EntryGvRow,101)] [s2Step174EntryFvFresh,s2Step174EntryGvFresh] [s2Step174EntryFvOut,s2Step174EntryGvOut]
    (growRow 769 s2Step174EntryGFresh) ((growRow 770 s2Step174EntryFvFresh ++ (growRow 771 s2Step174EntryGvFresh ++ []))) s2Step174EntryG_Incoming s2Step174EntryG_checked h2 s2Step174EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step174EntryFBefore s2Step174EntryFAfter s2Step174EntryGvAfter
    s2Step174EntryFRow s2Step174EntryFOut 183 s2Step174EntryFFresh [(s2Step174EntryGRow,183),(s2Step174EntryFvRow,101),(s2Step174EntryGvRow,101)] [s2Step174EntryGFresh,s2Step174EntryFvFresh,s2Step174EntryGvFresh] [s2Step174EntryGOut,s2Step174EntryFvOut,s2Step174EntryGvOut]
    (growRow 768 s2Step174EntryFFresh) ((growRow 769 s2Step174EntryGFresh ++ (growRow 770 s2Step174EntryFvFresh ++ (growRow 771 s2Step174EntryGvFresh ++ [])))) s2Step174EntryF_Incoming s2Step174EntryF_checked h1 s2Step174EntryF_Outgoing
  exact h0

private theorem s2Step174EntryBank_checked : compileHmrBankResizeLog .entry s2Step174EntryFBefore ⟨s2Step174EntryFRow,s2Step174EntryGRow,s2Step174EntryFvRow,s2Step174EntryGvRow⟩ ⟨183,183,101,101⟩ [s2Step174EntryFFresh,s2Step174EntryGFresh,s2Step174EntryFvFresh,s2Step174EntryGvFresh]=
    some (s2Step174EntryGvAfter,⟨s2Step174EntryFOut,s2Step174EntryGOut,s2Step174EntryFvOut,s2Step174EntryGvOut⟩,(growRow 768 s2Step174EntryFFresh ++ (growRow 769 s2Step174EntryGFresh ++ (growRow 770 s2Step174EntryFvFresh ++ (growRow 771 s2Step174EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step174EntryBank_rows]
  rfl

private def s2Step174ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<694) ∨ (695≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step174ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step174ExitFBefore : Arena := s2Step174ExitGAfter

private def s2Step174ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 785],768⟩

private def s2Step174ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787],770⟩

private def s2Step174ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 794, 793],769⟩

private def s2Step174ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 847],771⟩

private theorem s2Step174ExitBank_incomingDistinct : ([s2Step174ExitGRow,s2Step174ExitFRow,s2Step174ExitFvRow,s2Step174ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step174ExitF_Incoming : rowsOwned s2Step174ExitFBefore [s2Step174ExitFRow,s2Step174ExitFvRow,s2Step174ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step174ExitGRow,s2Step174ExitFRow,s2Step174ExitFvRow,s2Step174ExitGvRow] 1 s2Step174ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step174ExitFBefore (fun q => (0≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step174ExitBank_outgoingOwned : rowsOwned s2Step174ExitGvAfter [s2Step174ExitGOut,s2Step174ExitFOut,s2Step174ExitFvOut,s2Step174ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step174ExitGvAfter (fun q => (0≤q ∧ q<694) ∨ (695≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step174ExitF_Outgoing : rowsOwned s2Step174ExitGvAfter [s2Step174ExitFOut,s2Step174ExitFvOut,s2Step174ExitGvOut] :=
  hmrRows_owned_drop s2Step174ExitGvAfter [s2Step174ExitGOut,s2Step174ExitFOut,s2Step174ExitFvOut,s2Step174ExitGvOut] 1 s2Step174ExitBank_outgoingOwned

private theorem s2Step174ExitF_distinct : (s2Step174ExitFRow.sign::s2Step174ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step174ExitF_owned : (s2Step174ExitFRow.sign::s2Step174ExitFRow.payload).toFinset⊆s2Step174ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step174ExitFBefore (fun q => (0≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step174ExitF_retired : s2Step174ExitFBefore.retireSet s2Step174ExitFExtra.toFinset=s2Step174ExitFAfter := by
  unfold Arena.retireSet s2Step174ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step174ExitFBefore,s2Step174ExitGAfter,s2Step174ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step174ExitF_checked : planRowResizeLog s2Step174ExitFBefore s2Step174ExitFRow 182 []=
    some (s2Step174ExitFAfter,s2Step174ExitFOut,shrinkRow 768 s2Step174ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step174ExitFBefore s2Step174ExitFRow 182 s2Step174ExitF_distinct s2Step174ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step174ExitFRow.payload.take 182) s2Step174ExitFRow.sign=s2Step174ExitFOut := by decide +kernel
  have hi : s2Step174ExitFRow.payload.drop 182=s2Step174ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step174ExitF_retired] at result
  exact result

private def s2Step174ExitFvAfter : Arena := s2Step174ExitFAfter

private def s2Step174ExitFvBefore : Arena := s2Step174ExitFAfter

private theorem s2Step174ExitFv_Incoming : rowsOwned s2Step174ExitFvBefore [s2Step174ExitFvRow,s2Step174ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step174ExitGRow,s2Step174ExitFRow,s2Step174ExitFvRow,s2Step174ExitGvRow] 2 s2Step174ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step174ExitFvBefore (fun q => (0≤q ∧ q<694) ∨ (695≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step174ExitFv_Outgoing : rowsOwned s2Step174ExitGvAfter [s2Step174ExitFvOut,s2Step174ExitGvOut] :=
  hmrRows_owned_drop s2Step174ExitGvAfter [s2Step174ExitGOut,s2Step174ExitFOut,s2Step174ExitFvOut,s2Step174ExitGvOut] 2 s2Step174ExitBank_outgoingOwned

private theorem s2Step174ExitFv_distinct : (s2Step174ExitFvRow.sign::s2Step174ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step174ExitFv_owned : (s2Step174ExitFvRow.sign::s2Step174ExitFvRow.payload).toFinset⊆s2Step174ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step174ExitFvBefore (fun q => (0≤q ∧ q<694) ∨ (695≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step174ExitFv_reserved : s2Step174ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step174ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step174ExitFv_checked : planRowResizeLog s2Step174ExitFvBefore s2Step174ExitFvRow 102 []=
    some (s2Step174ExitFvAfter,s2Step174ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step174ExitFvBefore s2Step174ExitFvAfter s2Step174ExitFvRow 102 []
    s2Step174ExitFv_distinct s2Step174ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step174ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step174ExitFvRow.payload++[]) s2Step174ExitFvRow.sign=s2Step174ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step174ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step174ExitG_Incoming : rowsOwned s2Step174ExitGBefore [s2Step174ExitGRow,s2Step174ExitFRow,s2Step174ExitFvRow,s2Step174ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step174ExitGRow,s2Step174ExitFRow,s2Step174ExitFvRow,s2Step174ExitGvRow] 0 s2Step174ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step174ExitGBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step174ExitG_Outgoing : rowsOwned s2Step174ExitGvAfter [s2Step174ExitGOut,s2Step174ExitFOut,s2Step174ExitFvOut,s2Step174ExitGvOut] :=
  hmrRows_owned_drop s2Step174ExitGvAfter [s2Step174ExitGOut,s2Step174ExitFOut,s2Step174ExitFvOut,s2Step174ExitGvOut] 0 s2Step174ExitBank_outgoingOwned

private theorem s2Step174ExitG_distinct : (s2Step174ExitGRow.sign::s2Step174ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step174ExitG_owned : (s2Step174ExitGRow.sign::s2Step174ExitGRow.payload).toFinset⊆s2Step174ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step174ExitGBefore (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step174ExitG_retired : s2Step174ExitGBefore.retireSet s2Step174ExitGExtra.toFinset=s2Step174ExitGAfter := by
  unfold Arena.retireSet s2Step174ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step174ExitGBefore,s2Step174ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step174ExitG_checked : planRowResizeLog s2Step174ExitGBefore s2Step174ExitGRow 182 []=
    some (s2Step174ExitGAfter,s2Step174ExitGOut,shrinkRow 769 s2Step174ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step174ExitGBefore s2Step174ExitGRow 182 s2Step174ExitG_distinct s2Step174ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step174ExitGRow.payload.take 182) s2Step174ExitGRow.sign=s2Step174ExitGOut := by decide +kernel
  have hi : s2Step174ExitGRow.payload.drop 182=s2Step174ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step174ExitG_retired] at result
  exact result

private def s2Step174ExitGvBefore : Arena := s2Step174ExitFAfter

private theorem s2Step174ExitGv_Incoming : rowsOwned s2Step174ExitGvBefore [s2Step174ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step174ExitGRow,s2Step174ExitFRow,s2Step174ExitFvRow,s2Step174ExitGvRow] 3 s2Step174ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step174ExitGvBefore (fun q => (0≤q ∧ q<694) ∨ (695≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step174ExitGv_Outgoing : rowsOwned s2Step174ExitGvAfter [s2Step174ExitGvOut] :=
  hmrRows_owned_drop s2Step174ExitGvAfter [s2Step174ExitGOut,s2Step174ExitFOut,s2Step174ExitFvOut,s2Step174ExitGvOut] 3 s2Step174ExitBank_outgoingOwned

private theorem s2Step174ExitGv_distinct : (s2Step174ExitGvRow.sign::s2Step174ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step174ExitGv_owned : (s2Step174ExitGvRow.sign::s2Step174ExitGvRow.payload).toFinset⊆s2Step174ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step174ExitGvBefore (fun q => (0≤q ∧ q<694) ∨ (695≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step174ExitGv_retired : s2Step174ExitGvBefore.retireSet s2Step174ExitGvExtra.toFinset=s2Step174ExitGvAfter := by
  unfold Arena.retireSet s2Step174ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step174ExitGvBefore,s2Step174ExitFAfter,s2Step174ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step174ExitGv_checked : planRowResizeLog s2Step174ExitGvBefore s2Step174ExitGvRow 101 []=
    some (s2Step174ExitGvAfter,s2Step174ExitGvOut,shrinkRow 771 s2Step174ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step174ExitGvBefore s2Step174ExitGvRow 101 s2Step174ExitGv_distinct s2Step174ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step174ExitGvRow.payload.take 101) s2Step174ExitGvRow.sign=s2Step174ExitGvOut := by decide +kernel
  have hi : s2Step174ExitGvRow.payload.drop 101=s2Step174ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step174ExitGv_retired] at result
  exact result

private theorem s2Step174ExitBank_rows : planWindowRowsLog s2Step174ExitGBefore [(s2Step174ExitGRow,182),(s2Step174ExitFRow,182),(s2Step174ExitFvRow,102),(s2Step174ExitGvRow,101)] [[],[],[],[]]=
    some (s2Step174ExitGvAfter,[s2Step174ExitGOut,s2Step174ExitFOut,s2Step174ExitFvOut,s2Step174ExitGvOut],(shrinkRow 769 s2Step174ExitGExtra ++ (shrinkRow 768 s2Step174ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step174ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step174ExitGvAfter [] []=some (s2Step174ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step174ExitGvBefore s2Step174ExitGvAfter s2Step174ExitGvAfter
    s2Step174ExitGvRow s2Step174ExitGvOut 101 [] [] [] []
    (shrinkRow 771 s2Step174ExitGvExtra) ([]) s2Step174ExitGv_Incoming s2Step174ExitGv_checked h4 s2Step174ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step174ExitFvBefore s2Step174ExitFvAfter s2Step174ExitGvAfter
    s2Step174ExitFvRow s2Step174ExitFvOut 102 [] [(s2Step174ExitGvRow,101)] [[]] [s2Step174ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step174ExitGvExtra ++ [])) s2Step174ExitFv_Incoming s2Step174ExitFv_checked h3 s2Step174ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step174ExitFBefore s2Step174ExitFAfter s2Step174ExitGvAfter
    s2Step174ExitFRow s2Step174ExitFOut 182 [] [(s2Step174ExitFvRow,102),(s2Step174ExitGvRow,101)] [[],[]] [s2Step174ExitFvOut,s2Step174ExitGvOut]
    (shrinkRow 768 s2Step174ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step174ExitGvExtra ++ []))) s2Step174ExitF_Incoming s2Step174ExitF_checked h2 s2Step174ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step174ExitGBefore s2Step174ExitGAfter s2Step174ExitGvAfter
    s2Step174ExitGRow s2Step174ExitGOut 182 [] [(s2Step174ExitFRow,182),(s2Step174ExitFvRow,102),(s2Step174ExitGvRow,101)] [[],[],[]] [s2Step174ExitFOut,s2Step174ExitFvOut,s2Step174ExitGvOut]
    (shrinkRow 769 s2Step174ExitGExtra) ((shrinkRow 768 s2Step174ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step174ExitGvExtra ++ [])))) s2Step174ExitG_Incoming s2Step174ExitG_checked h1 s2Step174ExitG_Outgoing
  exact h0

private theorem s2Step174ExitBank_checked : compileHmrBankResizeLog .exit s2Step174ExitGBefore ⟨s2Step174ExitFRow,s2Step174ExitGRow,s2Step174ExitFvRow,s2Step174ExitGvRow⟩ ⟨182,182,102,101⟩ [[],[],[],[]]=
    some (s2Step174ExitGvAfter,⟨s2Step174ExitFOut,s2Step174ExitGOut,s2Step174ExitFvOut,s2Step174ExitGvOut⟩,(shrinkRow 769 s2Step174ExitGExtra ++ (shrinkRow 768 s2Step174ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step174ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step174ExitBank_rows]
  rfl

private theorem s2Step174Add0_apart : Disjoint s2Step174Add0Arena.live s2Step174Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step174Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step174Add0_card : s2Step174Add0Arena.live.card=884 := by
  decide +kernel

private theorem s2Step174Add0_borrowed : s2Step174Add0Arena.checkBorrow (hmrHybridCount s2Step174Add0Arena s2Step174Add0B.length) s2Step174Add0Work=some s2Step174Add0During := by
  have len : s2Step174Add0Work.length=hmrHybridCount s2Step174Add0Arena s2Step174Add0B.length := by
    rw [hmrHybridCount,s2Step174Add0_card]
    decide +kernel
  have nd : s2Step174Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step174Add0Arena s2Step174Add0During s2Step174Add0Work.toFinset s2Step174Add0_bounded s2Step174Add0_apart rfl

private theorem s2Step174Add0_distinct : (803::821::799::(s2Step174Add0A++s2Step174Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step174Add0_owned : (803::821::799::(s2Step174Add0A++s2Step174Add0B)).toFinset⊆s2Step174Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step174Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step174Add0_checked : compileHmrHybridCinLog s2Step174Add0Arena 821 803 799 s2Step174Add0A s2Step174Add0B s2Step174Add0Work=some s2Step174Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step174Add0Arena s2Step174Add0During 821 803 799 s2Step174Add0A s2Step174Add0B s2Step174Add0Work
    (by decide +kernel) (by decide +kernel) s2Step174Add0_distinct
    (fun q hq => s2Step174Add0_owned (List.mem_toFinset.mpr hq)) s2Step174Add0_borrowed

private theorem s2Step174Add1_apart : Disjoint s2Step174Add1Arena.live s2Step174Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step174Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step174Add1_card : s2Step174Add1Arena.live.card=884 := by
  decide +kernel

private theorem s2Step174Add1_borrowed : s2Step174Add1Arena.checkBorrow (hmrHybridCount s2Step174Add1Arena s2Step174Add1B.length) s2Step174Add1Work=some s2Step174Add1During := by
  have len : s2Step174Add1Work.length=hmrHybridCount s2Step174Add1Arena s2Step174Add1B.length := by
    rw [hmrHybridCount,s2Step174Add1_card]
    decide +kernel
  have nd : s2Step174Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step174Add1Arena s2Step174Add1During s2Step174Add1Work.toFinset s2Step174Add1_bounded s2Step174Add1_apart rfl

private theorem s2Step174Add1_distinct : (803::821::799::(s2Step174Add1A++s2Step174Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step174Add1_owned : (803::821::799::(s2Step174Add1A++s2Step174Add1B)).toFinset⊆s2Step174Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step174Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step174Add1_checked : compileHmrHybridCinLog s2Step174Add1Arena 821 803 799 s2Step174Add1A s2Step174Add1B s2Step174Add1Work=some s2Step174Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step174Add1Arena s2Step174Add1During 821 803 799 s2Step174Add1A s2Step174Add1B s2Step174Add1Work
    (by decide +kernel) (by decide +kernel) s2Step174Add1_distinct
    (fun q hq => s2Step174Add1_owned (List.mem_toFinset.mpr hq)) s2Step174Add1_borrowed

private theorem s2Step174F4_apart : Disjoint (s2Step174Add0A++s2Step174Add0B).toFinset (s2Step174Add1A++s2Step174Add1B).toFinset := by
  have nd : ((s2Step174Add0A++s2Step174Add0B)++(s2Step174Add1A++s2Step174Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step174F4_carry : s2Step174F4FlagArena.checkBorrow 1 [799]=some s2Step174Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step174F4FlagArena,s2Step174HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step174F4FlagArena,s2Step174HeadFvAfter,s2Step174Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step174F4_distinct : (846::821::803::799::((s2Step174Add0A++s2Step174Add1A)++(s2Step174Add0B++s2Step174Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step174F4_flag : s2Step174HeadFvAfter.checkBorrow 1 [803]=some s2Step174F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step174HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step174F4_owned : (846::821::((s2Step174Add0A++s2Step174Add1A)++(s2Step174Add0B++s2Step174Add1B))).toFinset⊆s2Step174HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step174HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step174F4_checked : compileHmrHybridF4Log s2Step174HeadFvAfter 846 821 s2Step174Add0A s2Step174Add0B s2Step174Add1A s2Step174Add1B [803] [799] s2Step174Add0Work s2Step174Add1Work=some s2Step174F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step174HeadFvAfter s2Step174F4FlagArena s2Step174Add0Arena s2Step174Add0During s2Step174Add1During 846 821
    s2Step174Add0A s2Step174Add0B s2Step174Add1A s2Step174Add1B [803] [799] s2Step174Add0Work s2Step174Add1Work
    (fun q hq => s2Step174F4_owned (List.mem_toFinset.mpr hq)) s2Step174F4_flag s2Step174F4_carry
    s2Step174F4_distinct s2Step174F4_apart s2Step174Add0_checked s2Step174Add1_checked

private theorem s2Step174Front_branch : s2Step174FrontSigmaArena.checkBorrow 1 [821]=some s2Step174HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step174FrontSigmaArena,s2Step174EntryGvAfter,s2Step174EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step174FrontSigmaArena,s2Step174EntryGvAfter,s2Step174EntryGAfter,s2Step174HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step174Front_entry : HmrFrontEntryValid s2Step174EntryFBefore s2Step174FrontBank 183 101 ⟨182,182,102,101⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step174FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step174EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step174EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step174FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step174Front_sigma : s2Step174EntryGvAfter.checkBorrow 1 [846]=some s2Step174FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step174EntryGvAfter,s2Step174EntryGAfter,arenaWires]
  · rfl

private def s2Step174HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step174HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step174HeadFBefore : Arena := s2Step174HeadGAfter

private def s2Step174HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694],768⟩

private def s2Step174HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820],770⟩

private def s2Step174HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 794],769⟩

private def s2Step174HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805],771⟩

private theorem s2Step174HeadBank_incomingDistinct : ([s2Step174HeadGRow,s2Step174HeadFRow,s2Step174HeadGvRow,s2Step174HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step174HeadF_Incoming : rowsOwned s2Step174HeadFBefore [s2Step174HeadFRow,s2Step174HeadGvRow,s2Step174HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step174HeadGRow,s2Step174HeadFRow,s2Step174HeadGvRow,s2Step174HeadFvRow] 1 s2Step174HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step174HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step174HeadBank_outgoingOwned : rowsOwned s2Step174HeadFvAfter [s2Step174HeadGOut,s2Step174HeadFOut,s2Step174HeadGvOut,s2Step174HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step174HeadFvAfter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step174HeadF_Outgoing : rowsOwned s2Step174HeadFvAfter [s2Step174HeadFOut,s2Step174HeadGvOut,s2Step174HeadFvOut] :=
  hmrRows_owned_drop s2Step174HeadFvAfter [s2Step174HeadGOut,s2Step174HeadFOut,s2Step174HeadGvOut,s2Step174HeadFvOut] 1 s2Step174HeadBank_outgoingOwned

private theorem s2Step174HeadF_distinct : (s2Step174HeadFRow.sign::s2Step174HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step174HeadF_owned : (s2Step174HeadFRow.sign::s2Step174HeadFRow.payload).toFinset⊆s2Step174HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step174HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step174HeadF_reserved : s2Step174HeadFBefore.reserve s2Step174HeadFFresh.toFinset=some s2Step174HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step174HeadFFresh,arenaWires]
  · norm_num [s2Step174HeadFBefore,s2Step174HeadGAfter,s2Step174HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step174HeadFAfter,s2Step174HeadFBefore,s2Step174HeadGAfter,s2Step174HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step174HeadF_checked : planRowResizeLog s2Step174HeadFBefore s2Step174HeadFRow 184 s2Step174HeadFFresh=
    some (s2Step174HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 785],768⟩,growRow 768 s2Step174HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step174HeadFBefore s2Step174HeadFAfter s2Step174HeadFRow 184 s2Step174HeadFFresh
    s2Step174HeadF_distinct s2Step174HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step174HeadF_reserved
  have rowEq : WindowRow.mk (s2Step174HeadFRow.payload++s2Step174HeadFFresh) s2Step174HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 785],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step174HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step174HeadFvBefore : Arena := s2Step174HeadGvAfter

private theorem s2Step174HeadFv_Incoming : rowsOwned s2Step174HeadFvBefore [s2Step174HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step174HeadGRow,s2Step174HeadFRow,s2Step174HeadGvRow,s2Step174HeadFvRow] 3 s2Step174HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step174HeadFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step174HeadFv_Outgoing : rowsOwned s2Step174HeadFvAfter [s2Step174HeadFvOut] :=
  hmrRows_owned_drop s2Step174HeadFvAfter [s2Step174HeadGOut,s2Step174HeadFOut,s2Step174HeadGvOut,s2Step174HeadFvOut] 3 s2Step174HeadBank_outgoingOwned

private theorem s2Step174HeadFv_distinct : (s2Step174HeadFvRow.sign::s2Step174HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step174HeadFv_owned : (s2Step174HeadFvRow.sign::s2Step174HeadFvRow.payload).toFinset⊆s2Step174HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step174HeadFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step174HeadFv_reserved : s2Step174HeadFvBefore.reserve s2Step174HeadFvFresh.toFinset=some s2Step174HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step174HeadFvFresh,arenaWires]
  · norm_num [s2Step174HeadFvBefore,s2Step174HeadGvAfter,s2Step174HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step174HeadFvAfter,s2Step174HeadFvBefore,s2Step174HeadGvAfter,s2Step174HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step174HeadFv_checked : planRowResizeLog s2Step174HeadFvBefore s2Step174HeadFvRow 102 s2Step174HeadFvFresh=
    some (s2Step174HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787],770⟩,growRow 770 s2Step174HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step174HeadFvBefore s2Step174HeadFvAfter s2Step174HeadFvRow 102 s2Step174HeadFvFresh
    s2Step174HeadFv_distinct s2Step174HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step174HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step174HeadFvRow.payload++s2Step174HeadFvFresh) s2Step174HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step174HeadG_Incoming : rowsOwned s2Step174HeadGBefore [s2Step174HeadGRow,s2Step174HeadFRow,s2Step174HeadGvRow,s2Step174HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step174HeadGRow,s2Step174HeadFRow,s2Step174HeadGvRow,s2Step174HeadFvRow] 0 s2Step174HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step174HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step174HeadG_Outgoing : rowsOwned s2Step174HeadFvAfter [s2Step174HeadGOut,s2Step174HeadFOut,s2Step174HeadGvOut,s2Step174HeadFvOut] :=
  hmrRows_owned_drop s2Step174HeadFvAfter [s2Step174HeadGOut,s2Step174HeadFOut,s2Step174HeadGvOut,s2Step174HeadFvOut] 0 s2Step174HeadBank_outgoingOwned

private theorem s2Step174HeadG_distinct : (s2Step174HeadGRow.sign::s2Step174HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step174HeadG_owned : (s2Step174HeadGRow.sign::s2Step174HeadGRow.payload).toFinset⊆s2Step174HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step174HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step174HeadG_reserved : s2Step174HeadGBefore.reserve s2Step174HeadGFresh.toFinset=some s2Step174HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step174HeadGFresh,arenaWires]
  · norm_num [s2Step174HeadGBefore,s2Step174HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step174HeadGAfter,s2Step174HeadGBefore,s2Step174HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step174HeadG_checked : planRowResizeLog s2Step174HeadGBefore s2Step174HeadGRow 184 s2Step174HeadGFresh=
    some (s2Step174HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 794, 793],769⟩,growRow 769 s2Step174HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step174HeadGBefore s2Step174HeadGAfter s2Step174HeadGRow 184 s2Step174HeadGFresh
    s2Step174HeadG_distinct s2Step174HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step174HeadG_reserved
  have rowEq : WindowRow.mk (s2Step174HeadGRow.payload++s2Step174HeadGFresh) s2Step174HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 794, 793],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step174HeadGvBefore : Arena := s2Step174HeadFAfter

private theorem s2Step174HeadGv_Incoming : rowsOwned s2Step174HeadGvBefore [s2Step174HeadGvRow,s2Step174HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step174HeadGRow,s2Step174HeadFRow,s2Step174HeadGvRow,s2Step174HeadFvRow] 2 s2Step174HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step174HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step174HeadGv_Outgoing : rowsOwned s2Step174HeadFvAfter [s2Step174HeadGvOut,s2Step174HeadFvOut] :=
  hmrRows_owned_drop s2Step174HeadFvAfter [s2Step174HeadGOut,s2Step174HeadFOut,s2Step174HeadGvOut,s2Step174HeadFvOut] 2 s2Step174HeadBank_outgoingOwned

private theorem s2Step174HeadGv_distinct : (s2Step174HeadGvRow.sign::s2Step174HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step174HeadGv_owned : (s2Step174HeadGvRow.sign::s2Step174HeadGvRow.payload).toFinset⊆s2Step174HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step174HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step174HeadGv_reserved : s2Step174HeadGvBefore.reserve s2Step174HeadGvFresh.toFinset=some s2Step174HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step174HeadGvFresh,arenaWires]
  · norm_num [s2Step174HeadGvBefore,s2Step174HeadFAfter,s2Step174HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step174HeadGvAfter,s2Step174HeadGvBefore,s2Step174HeadFAfter,s2Step174HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step174HeadGv_checked : planRowResizeLog s2Step174HeadGvBefore s2Step174HeadGvRow 102 s2Step174HeadGvFresh=
    some (s2Step174HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 847],771⟩,growRow 771 s2Step174HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step174HeadGvBefore s2Step174HeadGvAfter s2Step174HeadGvRow 102 s2Step174HeadGvFresh
    s2Step174HeadGv_distinct s2Step174HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step174HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step174HeadGvRow.payload++s2Step174HeadGvFresh) s2Step174HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 847],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step174HeadBank_rows : planWindowRowsLog s2Step174HeadGBefore [(s2Step174HeadGRow,184),(s2Step174HeadFRow,184),(s2Step174HeadGvRow,102),(s2Step174HeadFvRow,102)] [s2Step174HeadGFresh,s2Step174HeadFFresh,s2Step174HeadGvFresh,s2Step174HeadFvFresh]=
    some (s2Step174HeadFvAfter,[s2Step174HeadGOut,s2Step174HeadFOut,s2Step174HeadGvOut,s2Step174HeadFvOut],(growRow 769 s2Step174HeadGFresh ++ (growRow 768 s2Step174HeadFFresh ++ (growRow 771 s2Step174HeadGvFresh ++ (growRow 770 s2Step174HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step174HeadFvAfter [] []=some (s2Step174HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step174HeadFvBefore s2Step174HeadFvAfter s2Step174HeadFvAfter
    s2Step174HeadFvRow s2Step174HeadFvOut 102 s2Step174HeadFvFresh [] [] []
    (growRow 770 s2Step174HeadFvFresh) ([]) s2Step174HeadFv_Incoming s2Step174HeadFv_checked h4 s2Step174HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step174HeadGvBefore s2Step174HeadGvAfter s2Step174HeadFvAfter
    s2Step174HeadGvRow s2Step174HeadGvOut 102 s2Step174HeadGvFresh [(s2Step174HeadFvRow,102)] [s2Step174HeadFvFresh] [s2Step174HeadFvOut]
    (growRow 771 s2Step174HeadGvFresh) ((growRow 770 s2Step174HeadFvFresh ++ [])) s2Step174HeadGv_Incoming s2Step174HeadGv_checked h3 s2Step174HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step174HeadFBefore s2Step174HeadFAfter s2Step174HeadFvAfter
    s2Step174HeadFRow s2Step174HeadFOut 184 s2Step174HeadFFresh [(s2Step174HeadGvRow,102),(s2Step174HeadFvRow,102)] [s2Step174HeadGvFresh,s2Step174HeadFvFresh] [s2Step174HeadGvOut,s2Step174HeadFvOut]
    (growRow 768 s2Step174HeadFFresh) ((growRow 771 s2Step174HeadGvFresh ++ (growRow 770 s2Step174HeadFvFresh ++ []))) s2Step174HeadF_Incoming s2Step174HeadF_checked h2 s2Step174HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step174HeadGBefore s2Step174HeadGAfter s2Step174HeadFvAfter
    s2Step174HeadGRow s2Step174HeadGOut 184 s2Step174HeadGFresh [(s2Step174HeadFRow,184),(s2Step174HeadGvRow,102),(s2Step174HeadFvRow,102)] [s2Step174HeadFFresh,s2Step174HeadGvFresh,s2Step174HeadFvFresh] [s2Step174HeadFOut,s2Step174HeadGvOut,s2Step174HeadFvOut]
    (growRow 769 s2Step174HeadGFresh) ((growRow 768 s2Step174HeadFFresh ++ (growRow 771 s2Step174HeadGvFresh ++ (growRow 770 s2Step174HeadFvFresh ++ [])))) s2Step174HeadG_Incoming s2Step174HeadG_checked h1 s2Step174HeadG_Outgoing
  exact h0

private theorem s2Step174HeadBank_checked : compileHmrBankResizeLog .headroom s2Step174HeadGBefore ⟨s2Step174HeadFRow,s2Step174HeadGRow,s2Step174HeadFvRow,s2Step174HeadGvRow⟩ ⟨184,184,102,102⟩ [s2Step174HeadGFresh,s2Step174HeadFFresh,s2Step174HeadGvFresh,s2Step174HeadFvFresh]=
    some (s2Step174HeadFvAfter,⟨s2Step174HeadFOut,s2Step174HeadGOut,s2Step174HeadFvOut,s2Step174HeadGvOut⟩,(growRow 769 s2Step174HeadGFresh ++ (growRow 768 s2Step174HeadFFresh ++ (growRow 771 s2Step174HeadGvFresh ++ (growRow 770 s2Step174HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step174HeadBank_rows]
  rfl

private theorem s2Step174Front_checked : compileHmrSourceFrontLog s2Step174EntryFBefore s2Step174FrontBank 183 101 ⟨182,182,102,101⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step174FrontLog=some s2Step174FrontPlan := by
  have pairEq : s2Step174FrontPair=⟨s2Step174HeadFRow,s2Step174HeadGRow,s2Step174HeadFvRow,s2Step174HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step174FrontHead=⟨s2Step174ExitFRow,s2Step174ExitGRow,s2Step174ExitFvRow,s2Step174ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step174Add0A=s2Step174FrontHead.f.wires := by decide +kernel
  have gEq : s2Step174Add0B=s2Step174FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step174Add1A=s2Step174FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step174Add1B=s2Step174FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step174EntryFBefore s2Step174FrontBank 183 101 ⟨182,182,102,101⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step174FrontLog s2Step174FrontPlan
  · exact s2Step174Front_entry
  · exact s2Step174EntryBank_checked
  · exact s2Step174Front_sigma
  · rfl
  · exact s2Step174Front_branch
  · rfl
  · simpa only [s2Step174FrontPlan,pairEq] using s2Step174HeadBank_checked
  · simpa only [s2Step174FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step174F4_checked
  · exact s2Step174Counter_checked
  · rfl
  · simpa only [s2Step174FrontPlan,headEq] using s2Step174ExitBank_checked

private theorem s2Step174Complete_explicit_checked : compileHmrEarlyStepLog s2Step174EntryFBefore s2Step174FrontBank 183 101 ⟨182,182,102,101⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step174CompleteLog=some s2Step174CompletePlan := by
  let Q := s2Step174EarlyControlPlan
  have hq := s2Step174EarlyControl_plan_checked
  have fv1 : s2Step174CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step174CompleteOut.fv.payload[2]?.getD s2Step174CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step174CompleteOut.fv.payload[3]?.getD s2Step174CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step174CompleteOut.fv.payload[4]?.getD s2Step174CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step174EntryFBefore s2Step174EarlyControlArena s2Step174FrontBank 183 101 ⟨182,182,102,101⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step174CompleteLog s2Step174FrontPlan Q
    s2Step174Front_checked s2Step174Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step174Complete_owned s2Step174Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step174EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 846 s2Step174CompleteOut.fv.second (s2Step174CompleteOut.fv.payload[2]?.getD s2Step174CompleteOut.fv.sign) (s2Step174CompleteOut.fv.payload[3]?.getD s2Step174CompleteOut.fv.sign) (s2Step174CompleteOut.fv.payload[4]?.getD s2Step174CompleteOut.fv.sign) 821 42 s2Step174EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep174Arena : Arena := s2Step174EntryFBefore
def s2PrivateStep174Bank : WindowBank := s2Step174FrontBank
def s2PrivateStep174Spec : HmrSourceWalkStepLog := ⟨183,101,⟨182,182,102,101⟩,42,.early s2Step174CompleteLog⟩
def s2PrivateStep174Plan : HmrSourceStepPlan := .early s2Step174CompletePlan
theorem s2PrivateStep174_source : s2PrivateStep174Spec=s2ObservedLogs160[14] := rfl
theorem s2PrivateStep174_checked : compileHmrSourceStepLog s2PrivateStep174Arena s2PrivateStep174Bank
    s2PrivateStep174Spec.fgWidth s2PrivateStep174Spec.vWidth s2PrivateStep174Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 174 s2PrivateStep174Spec.need none s2PrivateStep174Spec.log=some s2PrivateStep174Plan := by
  change compileHmrSourceStepLog s2Step174EntryFBefore s2Step174FrontBank 183 101 ⟨182,182,102,101⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 174 42 none (.early s2Step174CompleteLog)=some (.early s2Step174CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 174<498)]
  rw [s2Step174Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
